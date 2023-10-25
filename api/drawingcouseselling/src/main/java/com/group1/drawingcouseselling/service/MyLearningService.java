package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.model.dto.CourseLearningDto;

import java.math.BigDecimal;
import java.util.List;

public interface MyLearningService {
    public void orderCourse(String email);
    public List<CourseLearningDto> getLearningCourseList(String email);

    public boolean hasCourse(String email, BigDecimal courseID);
    public Boolean checkSomeoneLearningCourse(BigDecimal courseID);
}
