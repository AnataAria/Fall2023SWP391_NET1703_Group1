package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;
@Builder
public record SectionDto(BigDecimal id, BigDecimal courseID, Integer sectionOrder, String title) {
    public SectionDto(BigDecimal id,BigDecimal courseID, Integer sectionOrder, String title){
        this.id = id;
        this.sectionOrder = sectionOrder;
        this.title = title;
        this.courseID = courseID;
    }
}
