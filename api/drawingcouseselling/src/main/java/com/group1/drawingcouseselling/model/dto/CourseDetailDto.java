package com.group1.drawingcouseselling.model.dto;

import java.util.List;

public record CourseDetailDto(CourseDto course, List<LessonDto> lessonDtoList) {
}
