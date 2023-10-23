package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;
@Builder
public record CourseEditDto(BigDecimal id, String name, BigDecimal price, String description, String durations) {
}
