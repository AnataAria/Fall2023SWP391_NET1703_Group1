package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.util.List;
@Builder
public record CourseDetailDto(CourseDto course, List<LessonDto> lessonDtoList) {
    public CourseDetailDto(CourseDto course, List<LessonDto> lessonDtoList){
        this.course = course;
        this.lessonDtoList = lessonDtoList;
    }
}
