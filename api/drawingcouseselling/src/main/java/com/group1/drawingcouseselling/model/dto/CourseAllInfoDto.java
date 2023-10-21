package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.util.List;
@Builder
public record CourseAllInfoDto(CourseDto courseInfo, List<SectionDetailDto> sections) {
    public CourseAllInfoDto(CourseDto courseInfo, List<SectionDetailDto> sections) {
        this.courseInfo = courseInfo;
        this.sections = sections;
    }
}
