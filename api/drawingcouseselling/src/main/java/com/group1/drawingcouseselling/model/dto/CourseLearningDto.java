package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

@Builder
public record CourseLearningDto(CourseDto courseInfo, Double finishCoursePercent) {
}
