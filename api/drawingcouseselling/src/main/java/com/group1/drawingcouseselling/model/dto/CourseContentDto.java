package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;
import java.sql.Date;
@Builder
public record CourseContentDto(BigDecimal id, String title, String description, String videoLink, Date createDate) {
    public CourseContentDto(BigDecimal id, String title, String description, String videoLink, Date createDate){
        this.id = id;
        this.title = title;
        this.description = description;
        this.videoLink = videoLink;
        this.createDate = createDate;
    }
}
