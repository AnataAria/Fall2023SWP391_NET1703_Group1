package com.group1.drawingcouseselling.model.dto;

import com.group1.drawingcouseselling.model.enums.EExamStatus;
import lombok.Builder;

import java.math.BigDecimal;
@Builder
public record ExamDto(BigDecimal id, Character score, String artLink, EExamStatus examStatus, String comment) {
}
