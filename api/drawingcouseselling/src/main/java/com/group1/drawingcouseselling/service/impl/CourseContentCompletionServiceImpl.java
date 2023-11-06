package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.*;
import com.group1.drawingcouseselling.model.dto.CourseContentCompletionDto;
import com.group1.drawingcouseselling.model.dto.ExamDto;
import com.group1.drawingcouseselling.model.entity.CourseContentCompletion;
import com.group1.drawingcouseselling.model.entity.Exam;
import com.group1.drawingcouseselling.model.enums.EExamStatus;
import com.group1.drawingcouseselling.model.enums.ES3;
import com.group1.drawingcouseselling.repository.CourseContentCompletionRepository;
import com.group1.drawingcouseselling.repository.ExamRepository;
import com.group1.drawingcouseselling.service.*;
import com.group1.drawingcouseselling.util.Tool;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CourseContentCompletionServiceImpl implements CourseContentCompletionService {
    private final CustomerService customerService;
    private final CourseContentService courseContentService;
    private final CourseService courseService;
    private final CourseContentCompletionRepository courseContentCompletionRepository;
    private final MetadataService metadataService;
    private final ExamRepository examRepository;
    @Override
    public CourseContentCompletionDto markCourseContentCompletion(BigDecimal courseContentID, String customerEmail){
        var customerInfo = customerService.searchCustomerByEmail(customerEmail);
        if(customerInfo.isEmpty()) throw new UserNotFoundException("Not found this customer");
        var courseContent = courseContentService.getCourseContentById(courseContentID);
        var course = courseService.getCourseByCourseContentID(courseContentID);
        customerInfo.get().getCourseList().stream().parallel().filter(c -> c.getId().equals(course.getId())).findFirst().orElseThrow(() -> new CourseNotOwnedException("You haven't owned this course"));
        var currentCourseContentCompletion = courseContentCompletionRepository.searchCourseContentCompletionByCourseContentAndCustomerID(courseContent.getId(), customerInfo.get().getId());
        if(currentCourseContentCompletion == null){
            currentCourseContentCompletion = new CourseContentCompletion();
            currentCourseContentCompletion.setCustomer(customerInfo.get());
            currentCourseContentCompletion.setDone(true);
            currentCourseContentCompletion.setCourseContent(courseContent);
        }else{
            currentCourseContentCompletion.setDone(true);
        }
        var result = courseContentCompletionRepository.save(currentCourseContentCompletion);
        if (result == null) throw new UserNotFoundException("");
        return CourseContentCompletionDto.builder()
                .courseContentID(courseContent.getId())
                .customerID(customerInfo.get().getId())
                .isDone(currentCourseContentCompletion.getDone())
                .finishDate(currentCourseContentCompletion.getFinishDate())
                .id(result.getId())
                .build();
    }
    @Override
    public List<CourseContentCompletionDto>getCustomerCourseContentCompletionList(BigDecimal courseID, String email){
        var customerInfo = customerService.searchCustomerByEmail(email);
        if(customerInfo.isEmpty()) throw new UserNotFoundException("Not found this customer");
        var course = customerInfo.get().getCourseList().stream().parallel().filter(c -> c.getId().equals(courseID)).findFirst().orElseThrow(() -> new CourseNotOwnedException("You haven't owned this course"));
        return courseContentCompletionRepository.getCourseContentCompletionByCustomerID(customerInfo.get().getId(), course.getId()).stream().map(c ->{
            return CourseContentCompletionDto.builder()
                    .id(c.getId())
                    .courseContentID(c.getCourseContent().getId())
                    .isDone(c.getDone())
                    .customerID(c.getCustomer().getId())
                    .finishDate(c.getFinishDate())
                    .build();
        }).toList();
    }
    @Override
    public BigDecimal getQuantityCustomerAccessCourseContent(BigDecimal courseContentID){
        return courseContentCompletionRepository.countCustomerLearningCourseSection(courseContentID);
    }
    @Override
    public Integer getTotalCourseContentLearnedOnCourse(BigDecimal customerID, BigDecimal courseID){
        return courseContentCompletionRepository.getCourseContentCompletionByCustomerID(customerID, courseID).size();
    }
    @Override
    public Boolean checkCourseContentCompleted(BigDecimal courseContentID, String email){
        var customer = customerService.searchCustomerByEmail(email).orElseThrow(()->new UserNotFoundException(""));
        var result = courseContentCompletionRepository.searchCourseContentCompletionByCourseContentAndCustomerID(courseContentID,customer.getId());
        return result !=null;
    }
    @Override
    public ExamDto submitCourseContentExam(BigDecimal courseContentID, MultipartFile submitFile, String email){
        String s3Path = "https://ademyimage.s3.ap-southeast-1.amazonaws.com/images/";
        var customer = customerService.searchCustomerByEmail(email).orElseThrow(()
                -> new UserNotFoundException("Not found customer with this email"));
        var courseContent = courseContentService.getCourseContentById(courseContentID);
        var course = courseService.getCourseByCourseContentID(courseContentID);
        customer.getCourseList().stream().parallel().filter(c -> c.getId().equals(course.getId())).findFirst().orElseThrow(() -> new CourseNotOwnedException("You haven't owned this course"));
        var currentCourseContentCompletion = courseContentCompletionRepository.searchCourseContentCompletionByCourseContentAndCustomerID(courseContent.getId(), customer.getId());
        Exam exam = null;
        if(currentCourseContentCompletion == null){
            currentCourseContentCompletion = new CourseContentCompletion();
            currentCourseContentCompletion.setCustomer(customer);
            currentCourseContentCompletion.setCourseContent(courseContent);
            currentCourseContentCompletion.setDone(false);
            exam = new Exam();
            currentCourseContentCompletion.setExam(exam);
            exam.setAssignmentInstructor(course.getInstuctor());
            try {
                var name = course.getId().toString() + "_" + courseContent.getId().toString()
                        + "_" + customer.getId().toString() + "_" + "ccontentexam";
                var currentFile = Tool.changeMultipartFileName(name, submitFile);
                var path = metadataService.upload(currentFile, ES3.images);
                exam.setArtLinked(s3Path + path);
                exam.setCourseContentCompletion(currentCourseContentCompletion);
            } catch (IOException e) {
                throw new SomethingWentWrongExceptions("Something went wrong with uploading file to S3");
            }
        }else {
            exam = currentCourseContentCompletion.getExam();
            if(exam.getSubmitStatus() == EExamStatus.PASSED) throw new ConditionNotMetException("You have already completed the exam");
            else if(exam.getSubmitStatus() == EExamStatus.SUBMITTED) throw new ConditionNotMetException("You have already submit your work");
            try{
                var name = course.getId().toString() + "_" + courseContent.getId().toString()
                        + "_" + customer.getId().toString() + "_" + "ccontentexam";
                var currentFile = Tool.changeMultipartFileName(name, submitFile);
                var path = metadataService.upload(currentFile, ES3.images);
                exam.setArtLinked(s3Path + path);
                exam.setSubmitStatus(EExamStatus.SUBMITTED);
                exam.setScore(null);
                exam.setInstructorComment("");
            }catch (IOException e){
                throw new SomethingWentWrongExceptions("Something went wrong with uploading file to S3");
            }

        }
        courseContentCompletionRepository.save(currentCourseContentCompletion);
        return ExamDto.builder()
                .id(currentCourseContentCompletion.getExam().getId())
                .comment(exam.getInstructorComment())
                .artLink(exam.getArtLinked())
                .examStatus(exam.getSubmitStatus())
                .build();
    }
}
