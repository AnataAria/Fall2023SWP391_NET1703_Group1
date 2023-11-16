package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;

@Builder
public record InstructorFinanceDto(InstructorDto instructorInfo,
                                   BigDecimal monthlySalary,
                                   BigDecimal courseSelling,
                                   BigDecimal totalMoneySelling
                                    ) {
}
