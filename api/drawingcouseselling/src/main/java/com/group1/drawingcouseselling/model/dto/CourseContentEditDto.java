package com.group1.drawingcouseselling.model.dto;

import jakarta.validation.constraints.NotBlank;
import lombok.Builder;
import org.hibernate.validator.constraints.URL;

import java.math.BigDecimal;

@Builder
public record CourseContentEditDto(BigDecimal id,
                                   @NotBlank(message = "Title can't be empty")
                                    String title,
                                   @NotBlank(message = "Description can't be empty")
                                   String description,
                                   @URL(regexp = "https:\\/\\/(youtu\\.be\\/|www\\.youtube\\.com\\/watch\\?v=)([a-zA-Z0-9_-]+)\\??([a-zA-Z0-9_-]*)\n", message = "Invalid youtube link")
                                   String videoLink) {
}
