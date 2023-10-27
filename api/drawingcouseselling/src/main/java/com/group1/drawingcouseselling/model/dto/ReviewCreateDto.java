package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;
@Builder
public record ReviewCreateDto(String comment, Double rating, BigDecimal courseID) {
}
