package com.group1.drawingcouseselling.model.dto;

import jakarta.validation.Valid;

import java.math.BigDecimal;

public record CourseContentCreateDto(BigDecimal sectionID, @Valid CourseContentDto courseContent) {
}
