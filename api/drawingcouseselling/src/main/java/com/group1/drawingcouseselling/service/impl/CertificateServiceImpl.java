package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.ConditionNotMetException;
import com.group1.drawingcouseselling.exception.CourseNotFoundException;
import com.group1.drawingcouseselling.exception.EntityNotFoundException;
import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.entity.Centificate;
import com.group1.drawingcouseselling.model.entity.Customer;
import com.group1.drawingcouseselling.model.entity.FileMeta;
import com.group1.drawingcouseselling.model.enums.ES3;
import com.group1.drawingcouseselling.repository.CertificationRepository;
import com.group1.drawingcouseselling.repository.FileMetaRepository;
import com.group1.drawingcouseselling.service.*;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.mock.web.MockMultipartFile;
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
        if(checkCertificate(courseID.toString() + "certificate" + customerInfo.getId().toString())) throw new ConditionNotMetException("");
        var certificateCreate = new Centificate();
        certificateCreate.setCustomer(customerInfo);
        var course = courseService.searchCourseEntityById(courseID);
        if(course == null) throw new CourseNotFoundException("Not found this course");
        certificateCreate.setCourse(course);
        certificateCreate.setRecieveDate(new Date(System.currentTimeMillis()));
        certificateCreate.setLectureName(course.getInstuctor().getFullName());
        try {
            // Take the certificate html form from resources/templates
            Resource resource = new ClassPathResource("templates/certification.html");
            InputStream inputStream = resource.getInputStream();
            java.util.Scanner s = new java.util.Scanner(inputStream).useDelimiter("\\A");
            String templateHtml = s.hasNext() ? s.next() : "";

            // Process the HTML template using Thymeleaf
            TemplateEngine templateEngine = new TemplateEngine();
            Context context = new Context();
            context.setVariable("name", certificateCreate.getCustomer().getFullName().toUpperCase());
            context.setVariable("text1", "has successfully completed an draw education program entitled");
            context.setVariable("course_name", certificateCreate.getCourse().getName().toUpperCase());
            context.setVariable("text2", "And has been awarded this certificate in recognition of this effort and accomplishment in increasing professional ability");
            context.setVariable("content", "This is some content for the PDF.");
            context.setVariable("director", certificateCreate.getCourse().getInstuctor().getFullName());
            context.setVariable("manager", "Nguyen Quang Vinh");
            String processedHtml = templateEngine.process(templateHtml, context);

            // Create the PDF
            ITextRenderer renderer = new ITextRenderer();
            renderer.setDocumentFromString(processedHtml);
            renderer.layout();
            try (ByteArrayOutputStream os = new ByteArrayOutputStream()) {
                renderer.createPDF(os, true);
                String certificateName = course.getId().toString() + "certificate" + customerInfo.getId().toString();
                // Push certificate to S3
                MultipartFile multipartFile = new MockMultipartFile("file",certificateName +".pdf", "application/pdf", os.toByteArray());
                metadataService.upload(multipartFile, ES3.certification);
                FileMeta result = fileMetaRepository.searchFileMetaByFileNameOrderBySerialVersionUIDDesc(certificateName);
                certificateCreate.setFileLocation(result);
            }
            System.out.println("PDF file successfully created from Thymeleaf template!");
            certificationRepository.save(certificateCreate);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private boolean checkCertificate(String certificateName){
        return fileMetaRepository.searchFileMetaByFileNameOrderBySerialVersionUIDDesc(certificateName) != null;
    }
    @Override
    public MultipartFile getCertificate(String customerEmail, BigDecimal courseID){
        // Search customer info using email
        var customer = customerService.searchCustomerByEmail(customerEmail).orElseThrow(() -> new UserNotFoundException("Not found customer with this email"));
        var course = courseService.searchCourseEntityById(courseID);
        String certificateName = course.getId().toString() + "certificate" + customer.getId().toString();
        FileMeta certificateData = fileMetaRepository.searchFileMetaByFileNameOrderBySerialVersionUIDDesc(certificateName);
        if(certificateData == null) throw new EntityNotFoundException("This user doesn't have this certificate yet");
        MultipartFile certificateFile = null;
        try {
            certificateFile = new MockMultipartFile(UUID.randomUUID().toString() + ".pdf", metadataService.download(certificateData.getImgId()).getObjectContent());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return certificateFile;
    }

    public List<MultipartFile> getAllCertificatesListOfCustomer(String customerEmail){
        return null;
    }
}
