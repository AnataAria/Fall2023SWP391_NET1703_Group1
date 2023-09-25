package com.group1.drawingcouseselling.model.dto;

import com.group1.drawingcouseselling.model.entity.Course;
import lombok.Builder;

import java.util.List;
@Builder
public record CartDto(List<CourseDto> courseList) {
}
