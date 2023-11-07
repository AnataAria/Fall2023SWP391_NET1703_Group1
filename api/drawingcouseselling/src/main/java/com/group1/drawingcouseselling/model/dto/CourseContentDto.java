package com.group1.drawingcouseselling.model.dto;

import com.group1.drawingcouseselling.model.enums.ECourseContentType;
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
                               @Pattern(regexp = "^(https?://)?(www\\.)?(youtube\\.com/watch\\?v=|youtu\\.be/|youtube\\.com/embed/)[a-zA-Z0-9_-]+.*$", message = "Invalid YouTube link")
                               @NotBlank(message = "The youtube link must not be empty")
                               String videoLink,
                               ECourseContentType courseType,
                               Date createDate) {
    public CourseContentDto(BigDecimal id, String title, String description, String videoLink, ECourseContentType courseType, Date createDate) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.videoLink = videoLink;
        this.createDate = createDate;
        this.courseType = courseType;
    }
}
