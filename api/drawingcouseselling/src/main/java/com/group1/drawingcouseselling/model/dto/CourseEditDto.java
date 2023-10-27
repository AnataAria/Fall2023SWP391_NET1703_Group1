package com.group1.drawingcouseselling.model.dto;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.Builder;

import java.math.BigDecimal;

@Builder
public record CourseEditDto(BigDecimal id,
                            @NotBlank(message = "Title can't be empty")
                            String name,
                            @Min(value = 1, message = "Price must be greater or equal to 1")
                            BigDecimal price,
                            @NotBlank(message = "Description can't be empty")
                            String description,
                            @Pattern(regexp = "\\d+\\s*(day|week|month|year|days|weeks|months|years)\n",
                                    message = "Durations must be written like this: 1 day, 2 weeks, 2 days,...")
                            @NotBlank(message = "Duration can't be empty")
                            String durations) {
}
