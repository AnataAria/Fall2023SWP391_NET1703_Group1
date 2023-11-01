package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.*;
import com.group1.drawingcouseselling.model.dto.CertificationDto;
import com.group1.drawingcouseselling.model.entity.*;
import com.group1.drawingcouseselling.model.enums.ECertificateFileStatus;
import com.group1.drawingcouseselling.model.enums.ES3;
import com.group1.drawingcouseselling.repository.CertificationRepository;
import com.group1.drawingcouseselling.repository.FileMetaRepository;
import com.group1.drawingcouseselling.service.*;
import com.lowagie.text.DocumentException;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import org.xhtmlrenderer.pdf.ITextRenderer;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class CertificateServiceImpl implements CertificateService {
    private final MetadataService metadataService;
    private final CustomerService customerService;
    private final CourseService courseService;
    private final CertificationRepository certificationRepository;
    private final FileMetaRepository fileMetaRepository;
    // This method is called every one min to check if certificate is need to be created
    @Scheduled(cron = "0 * * * * *")
    private void generateCertificatesPDFAutomatically(){
        System.out.println("Trigger");
        var certificates = certificationRepository.getCertificateByCertificateFileStatus(ECertificateFileStatus.NOT_CREATED,
                ECertificateFileStatus.UPDATING);
        //If finding any certificate, the creating will start
        if(!certificates.isEmpty()){
            // Loading html template
            String tempCertificates = loadCertificateTemplate();
            // Run for each certificate
            certificates.stream().parallel().forEach(certificate -> {
                //Generate name for them
                String certificateName = certificate.getId().getCourse().getId().toString()
                        + "certificate" + certificate.getId().getCustomer().getId().toString();
                try{
                    byte[] pdfData = createCertificatePDF(tempCertificates,certificate);
                    MultipartFile multipartFile = new MockMultipartFile("file", certificateName + ".pdf",
                            "application/pdf",pdfData);
                    FileMeta result = uploadCertificateToS3(multipartFile);
                    certificate.setFileLocation(result);
                    //Update certificate to the database
                    certificate.setCertificateFileStatus(ECertificateFileStatus.CREATED);
                    certificationRepository.save(certificate);
                }catch (RuntimeException e){
                    throw new SomethingWentWrongExceptions("Error when pushing file to S3 or saving certificate");
                }
            });
        }
    }
    @Override
    public void createCertificate(String customerEmail, BigDecimal courseID) {
        var customer = customerService.searchCustomerByEmail(customerEmail).orElseThrow(() -> new UserNotFoundException("Not found customer with this email"));
        createCertificate(customer,courseID);
    }
    @Override
    public void createCertificate(BigDecimal customerID, BigDecimal courseID) {
        var customer = customerService.searchCustomerByID(customerID).orElseThrow(() -> new UserNotFoundException("Not found customer with this email"));
        createCertificate(customer,courseID);
    }
    @Override
    public void createCertificate(Customer customerInfo, BigDecimal courseID){
        String certificateName = courseID.toString() + "certificate" + customerInfo.getId().toString();
        var a = new CertificationKey();
        a.setCustomer(customerInfo);
        a.setCourse(courseService.searchCourseEntityById(courseID));
        if(certificationRepository.findById(a).orElseThrow(() -> new ConditionNotMetException("")).getCertificateFileStatus() == ECertificateFileStatus.CREATED) return;
        if(checkCertificate(certificateName)) throw new ConditionNotMetException("");
        var certificateCreate = new Centificate();
        var key = new CertificationKey();
        var course = courseService.searchCourseEntityById(courseID);
        if(course == null) throw new CourseNotFoundException("Not found this course");
        key.setCustomer(customerInfo);
        key.setCourse(course);
        certificateCreate.setId(key);
        certificateCreate.getId().setCourse(course);
        certificateCreate.setRecieveDate(new Date(System.currentTimeMillis()));
        certificateCreate.setLectureName(course.getInstuctor().getFullName());
        certificationRepository.save(certificateCreate);
    }

    private String loadCertificateTemplate(){
        Resource resource = new ClassPathResource("templates/certification.html");
        try{
            InputStream inputStream = resource.getInputStream();
            java.util.Scanner s = new java.util.Scanner(inputStream).useDelimiter("\\A");
            return s.hasNext() ? s.next() : "";
        } catch (IOException e) {
            throw new SomethingWentWrongExceptions("Error when loading certificate form template");
        }
    }

    private byte[] createCertificatePDF(String templateHtml, Centificate certificate) {
        TemplateEngine templateEngine = new TemplateEngine();
        Context context = new Context();
        context.setVariable("name", certificate.getId().getCustomer().getFullName().toUpperCase());
        context.setVariable("text1", "has successfully completed an draw education program entitled");
        context.setVariable("course_name", certificate.getId().getCourse().getName().toUpperCase());
        context.setVariable("text2", "And has been awarded this certificate in recognition of this effort and accomplishment in increasing professional ability");
        context.setVariable("content", "This is some content for the PDF.");
        context.setVariable("director", certificate.getLectureName().toUpperCase());
        context.setVariable("manager", "Nguyen Quang Vinh");
        String processedHtml = templateEngine.process(templateHtml, context);

        ITextRenderer renderer = new ITextRenderer();
        renderer.setDocumentFromString(processedHtml);
        renderer.layout();
        try (ByteArrayOutputStream os = new ByteArrayOutputStream()) {
            renderer.createPDF(os, true);
            return os.toByteArray();
        } catch (IOException | DocumentException e) {
            throw new SomethingWentWrongExceptions("Error when creating PDF file");
        }
    }

    private FileMeta uploadCertificateToS3(MultipartFile multipartFile) {
        try {
            metadataService.upload(multipartFile, ES3.certification);
            return fileMetaRepository.searchFileMetaByFileName(multipartFile.getOriginalFilename());
        } catch (Exception e) {
            throw new RuntimeException("Failed to upload the certificate to S3", e);
        }
    }


    private boolean checkCertificate(String certificateName){
        return fileMetaRepository.searchFileMetaByFileName(certificateName) != null;
    }
    @Override
    public MultipartFile getCertificate(String customerEmail, BigDecimal courseID){
        // Search customer info using email
        var customer = customerService.searchCustomerByEmail(customerEmail).orElseThrow(() -> new UserNotFoundException("Not found customer with this email"));
        var course = courseService.searchCourseEntityById(courseID);
        String certificateName = course.getId().toString() + "certificate" + customer.getId().toString();
        FileMeta certificateData = fileMetaRepository.searchFileMetaByFileName(certificateName);
        if(certificateData == null) throw new EntityNotFoundException("This user doesn't have this certificate yet");
        MultipartFile certificateFile = null;
        try {
            certificateFile = new MockMultipartFile("file",UUID.randomUUID().toString() + ".pdf","application/pdf", metadataService.download(certificateData.getImgId()).getObjectContent());
        } catch (IOException e) {
            throw new SomethingWentWrongExceptions("");
        }
        return certificateFile;
    }

    private byte[] getCertificateFileByCertificateData(Centificate centificate){
        var certificateFileInfomation = centificate.getFileLocation();
        byte[] certificateFile = null;
        try {
            certificateFile = metadataService.download(certificateFileInfomation.getImgId()).getObjectContent().readAllBytes();
        } catch (IOException e) {
            throw new SomethingWentWrongExceptions("");
        }
        return certificateFile;
    }
    @Override
    public List<CertificationDto> getAllCertificatesListOfCustomer(String customerEmail){
        var customer = customerService.searchCustomerByEmail(customerEmail).orElseThrow(() -> new UserNotFoundException("Not found this customer"));
        var certificateList = certificationRepository.findByIdCustomer_CustomerId(customer.getId());
        return certificateList.stream().parallel().map(certificate ->{
            Course course = certificate.getId().getCourse();
            return CertificationDto.builder()
                    .lectureName(certificate.getLectureName())
                    .recieveDate(certificate.getRecieveDate())
                    .courseID(new Course().convertEntityToDto(certificate.getId().getCourse()))
                    .certificatePdf(getCertificateFileByCertificateData(certificate))
                    .build();
        } ).toList();
    }
}
