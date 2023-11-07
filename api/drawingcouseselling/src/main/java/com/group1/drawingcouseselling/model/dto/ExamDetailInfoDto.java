package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;
@Builder
public record ExamDetailInfoDto(ExamDto examInfo, CustomerDto customerInfo, CourseContentDto courseContent, CourseDto course) {
}
