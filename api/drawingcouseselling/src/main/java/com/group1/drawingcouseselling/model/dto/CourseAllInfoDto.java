package com.group1.drawingcouseselling.model.dto;

import java.util.List;

public record CourseAllInfoDto(CourseDto courseInfo, List<SectionDetailDto> sections) {
    public CourseAllInfoDto(CourseDto courseInfo, List<SectionDetailDto> sections) {
        this.courseInfo = courseInfo;
        this.sections = sections;
    }
}
