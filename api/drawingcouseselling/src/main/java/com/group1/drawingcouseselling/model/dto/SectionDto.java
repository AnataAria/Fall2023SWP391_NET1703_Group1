package com.group1.drawingcouseselling.model.dto;

import jakarta.validation.constraints.NotBlank;
import lombok.Builder;

import java.math.BigDecimal;
@Builder
public record SectionDto(BigDecimal id, Integer sectionOrder,
                         @NotBlank(message = "Title can't be empty")
                         String title) {
    public SectionDto(BigDecimal id, Integer sectionOrder, String title){
        this.id = id;
        this.sectionOrder = sectionOrder;
        this.title = title;
    }
}
