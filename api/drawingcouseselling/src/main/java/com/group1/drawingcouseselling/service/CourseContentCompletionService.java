package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.CourseContentCompletionDto;
import com.group1.drawingcouseselling.model.dto.ExamDto;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;
import java.util.List;

public interface CourseContentCompletionService {
    public CourseContentCompletionDto markCourseContentCompletion(BigDecimal courseContentID, String customerEmail);
    public List<CourseContentCompletionDto> getCustomerCourseContentCompletionList(BigDecimal courseID, String email);
    public BigDecimal getQuantityCustomerAccessCourseContent(BigDecimal courseContentID);
    public Integer getTotalCourseContentLearnedOnCourse(BigDecimal customerID, BigDecimal courseID);
    public Boolean checkCourseContentCompleted(BigDecimal courseContentID, String customerEmail);
    public ExamDto submitCourseContentExam(BigDecimal courseContentID, MultipartFile submitFile, String email);
}
