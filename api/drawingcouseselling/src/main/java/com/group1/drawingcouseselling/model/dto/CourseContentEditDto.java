package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;
@Builder
public record CourseContentEditDto(BigDecimal id, String title, String description, String videoLink) {
}
