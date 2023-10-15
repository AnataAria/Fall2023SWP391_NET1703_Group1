package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;
import software.amazon.awssdk.services.s3.endpoints.internal.Value;

import java.math.BigDecimal;
import java.util.List;
@Builder
public record SectionDetailDto(SectionDto sectionInfo,  List<CourseContentDto> lessons) {
    public SectionDetailDto(SectionDto sectionInfo, List<CourseContentDto> lessons){
        this.sectionInfo = sectionInfo;
        this.lessons = lessons;
    }
}
