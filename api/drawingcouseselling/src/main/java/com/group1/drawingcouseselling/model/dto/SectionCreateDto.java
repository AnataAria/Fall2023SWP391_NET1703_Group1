package com.group1.drawingcouseselling.model.dto;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;

import java.math.BigDecimal;
@Builder
public record SectionCreateDto(
        @NotNull(message = "CourseID is mandatory")
        @Min(value = 0, message = "CourseID is mandatory") BigDecimal courseID,
        SectionDto sectionInfo) {
    public SectionCreateDto(BigDecimal courseID, SectionDto sectionInfo){
        this.courseID = courseID;
        this.sectionInfo = sectionInfo;
    }
}
