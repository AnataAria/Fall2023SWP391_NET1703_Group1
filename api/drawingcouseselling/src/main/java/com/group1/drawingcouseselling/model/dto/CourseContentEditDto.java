package com.group1.drawingcouseselling.model.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.Builder;

import java.math.BigDecimal;

@Builder
public record CourseContentEditDto(BigDecimal id,
                                   @NotBlank(message = "Title can't be empty")
                                    String title,
                                   @NotBlank(message = "Description can't be empty")
                                   String description,
                                   @Pattern(regexp = "^(https?://)?(www\\.)?youtube\\.com/watch\\?v=[a-zA-Z0-9_-]+.*$", message = "Invalid YouTube link")
                                   @NotBlank(message = "The youtube link must not be empty")
                                   String videoLink) {
}
