package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;
import java.sql.Date;
@Builder
public record CourseContentCompletionDto(BigDecimal id, BigDecimal courseContentID, Boolean isDone, Date finishDate, BigDecimal customerID) {
}
