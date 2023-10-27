package com.group1.drawingcouseselling.model.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.Builder;

import java.math.BigDecimal;
import java.sql.Date;

@Builder
public record CourseContentDto(BigDecimal id,
                               @NotBlank(message = "Title can't be empty")
                               @NotNull(message = "Title can't be empty")
                               String title,
                               @NotBlank(message = "Description can't be empty")
                               @NotNull(message = "Description can't be empty")
                               String description,
                               @Pattern(regexp = "^(https?://)?(www\\.)?youtube\\.com/watch\\?v=[a-zA-Z0-9_-]+.*$", message = "Invalid YouTube link")
                               @NotBlank(message = "The youtube link must not be empty")
                               String videoLink,
                               Date createDate) {
    public CourseContentDto(BigDecimal id, String title, String description, String videoLink, Date createDate) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.videoLink = videoLink;
        this.createDate = createDate;
    }
}
