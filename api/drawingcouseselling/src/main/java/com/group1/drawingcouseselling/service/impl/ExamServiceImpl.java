package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.EntityNotFoundException;
import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.dto.ErrorMessage;
import com.group1.drawingcouseselling.model.dto.ExamDetailInfoDto;
import com.group1.drawingcouseselling.model.dto.ExamDto;
import com.group1.drawingcouseselling.model.dto.ExamMarkDto;
import com.group1.drawingcouseselling.model.entity.Course;
import com.group1.drawingcouseselling.model.entity.CourseContent;
import com.group1.drawingcouseselling.model.entity.Customer;
import com.group1.drawingcouseselling.model.enums.EExamStatus;
import com.group1.drawingcouseselling.repository.ExamRepository;
import com.group1.drawingcouseselling.service.CustomerService;
import com.group1.drawingcouseselling.service.ExamService;
import com.group1.drawingcouseselling.service.InstructorService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ExamServiceImpl implements ExamService {
    private final ExamRepository examRepository;
    private final CustomerService customerService;
    private final InstructorService instructorService;
    @Override
    public ExamDto getExamInformation(BigDecimal courseContentID, String customerEmail){
        var customer = customerService.searchCustomerByEmail(customerEmail).orElseThrow(() -> new UserNotFoundException(""));
        var customerExam = examRepository.getExamByCustomerIdAndCourseContentId(customer.getId(), courseContentID)
                .orElseThrow(() -> new EntityNotFoundException(ErrorMessage.builder()
                        .errorList(List.of("Exam not submitted"))
                        .status(HttpStatus.valueOf(420))
                        .currentTimeError(new Date(System.currentTimeMillis()))
                        .build()));
        return ExamDto.builder()
                .score(customerExam.getScore())
                .id(customerExam.getId())
                .examStatus(customerExam.getSubmitStatus())
                .artLink(customerExam.getArtLinked())
                .comment(customerExam.getInstructorComment())
                .build();
    }
    @Override
    public Page<ExamDto> getExamListAndPaging(Integer page, Integer maxPage, String instructorEmail){
        var instructorInfo = instructorService.findInstructorByInstructorEmail(instructorEmail);
        if(instructorInfo == null) throw new UserNotFoundException("Not found this instructor in database");
        var examList = examRepository.getExamNotAssignedByInstructorIdAndStatusOnPaging(instructorInfo.getId(),
                EExamStatus.SUBMITTED,
                PageRequest.of(page, maxPage)
                );
        return examList.map(e -> ExamDto.builder()
                .id(e.getId())
                .score(e.getScore())
                .artLink(e.getArtLinked())
                .examStatus(e.getSubmitStatus())
                .comment(e.getInstructorComment())
                .build());
    }
    @Override
    public ExamDetailInfoDto getExamInfoDetail(BigDecimal examID){
        var exam = examRepository.findById(examID).orElseThrow(() -> new EntityNotFoundException("This exam does not exist"));
        var customerInfo = exam.getCourseContentCompletion().getCustomer();
        var courseContent = exam.getCourseContentCompletion().getCourseContent();
        var course = courseContent.getSection().getCourse();
        return ExamDetailInfoDto.builder()
                .examInfo(ExamDto.builder()
                        .id(exam.getId())
                        .artLink(exam.getArtLinked())
                        .score(exam.getScore())
                        .comment(exam.getInstructorComment())
                        .examStatus(exam.getSubmitStatus())
                        .build())
                .courseContent(new CourseContent().convertEntityToDto(courseContent))
                .customerInfo(new Customer().convertEntityToDto(customerInfo))
                .course(new Course().convertEntityToDto(course))
                .build();
    }
    @Override
    public ExamDto assignScoreSubmit(String instructorEmail, ExamMarkDto examMark){
        var instructor = instructorService.findInstructorByInstructorEmail(instructorEmail);
        if(instructor == null) throw new UserNotFoundException("");
        return null;
    }
}
