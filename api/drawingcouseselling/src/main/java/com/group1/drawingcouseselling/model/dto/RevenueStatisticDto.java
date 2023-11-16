package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;
@Builder
public record RevenueStatisticDto(Integer year,
                                  BigDecimal firstMonth,
                                  BigDecimal secondMonth,
                                  BigDecimal thirdMonth,
                                  BigDecimal fourthMonth,
                                  BigDecimal fifthMonth,
                                  BigDecimal sixthMonth,
                                  BigDecimal seventhMonth,
                                  BigDecimal eighthMonth,
                                  BigDecimal ninthMonth,
                                  BigDecimal tenthMonth,
                                  BigDecimal eleventhMonth,
                                  BigDecimal twelfthMonth) {
}
