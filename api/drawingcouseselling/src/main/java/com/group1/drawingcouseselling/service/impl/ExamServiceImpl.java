package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.EntityNotFoundException;
import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.dto.ErrorMessage;
import com.group1.drawingcouseselling.model.dto.ExamDto;
import com.group1.drawingcouseselling.repository.ExamRepository;
import com.group1.drawingcouseselling.service.CustomerService;
import com.group1.drawingcouseselling.service.ExamService;
import lombok.RequiredArgsConstructor;
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
}
