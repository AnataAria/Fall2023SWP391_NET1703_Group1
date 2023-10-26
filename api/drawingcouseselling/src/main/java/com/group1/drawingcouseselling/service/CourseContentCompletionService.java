package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.CourseContentCompletionDto;

import java.math.BigDecimal;
import java.util.List;

public interface CourseContentCompletionService {
    public CourseContentCompletionDto markCourseContentCompletion(BigDecimal courseContentID, String customerEmail);
    public List<CourseContentCompletionDto> getCustomerCourseContentCompletionList(BigDecimal courseID, String email);
    public BigDecimal getQuantityCustomerAccessCourseContent(BigDecimal courseContentID);
}
