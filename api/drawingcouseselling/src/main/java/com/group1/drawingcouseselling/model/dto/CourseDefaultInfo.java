package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.util.List;
@Builder
public record CourseDefaultInfo(CourseDto courseInfo, List<SectionDefaultInfo> sectionList) {
}
