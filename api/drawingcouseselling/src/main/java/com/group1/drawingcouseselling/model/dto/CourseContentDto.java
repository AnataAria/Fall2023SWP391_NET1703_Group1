package com.group1.drawingcouseselling.model.dto;

import jakarta.validation.constraints.NotBlank;
import lombok.Builder;
import org.hibernate.validator.constraints.URL;

import java.math.BigDecimal;
import java.sql.Date;

@Builder
public record CourseContentDto(BigDecimal id,
                               @NotBlank(message = "Title can't be empty")
                               String title,
                               @NotBlank(message = "Description can't be empty")
                               String description,
                               @URL(regexp = "https://youtu\\.be/([a-zA-Z0-9_-]+)\\??([a-zA-Z0-9_-]*)", message = "Invalid youtube link")
                               @URL(regexp = "https://www\\.youtube\\.com/watch\\?v=([a-zA-Z0-9_-]+)", message = "Invalid youtube link")
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
