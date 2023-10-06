package com.group1.drawingcouseselling.model.dto;

import com.group1.drawingcouseselling.model.entity.Course;
import lombok.Builder;

import java.math.BigDecimal;
import java.util.List;
@Builder
public record CartDto(BigDecimal localTotal,List<CourseDto> courseList) {
}
