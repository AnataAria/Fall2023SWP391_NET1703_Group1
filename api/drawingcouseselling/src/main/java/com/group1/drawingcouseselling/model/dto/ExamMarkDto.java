package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;
@Builder
public record ExamMarkDto(BigDecimal examID, Character score, String comment) {
}
