package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;
import java.sql.Date;
@Builder
public record ReviewDto(BigDecimal id,
                        String comment,
                        Date feedbackDate,
                        Date updateDate,
                        Double rating,
                        BigDecimal courseID,
                        CustomerDto customer) {
}
