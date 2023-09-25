package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;
@Builder
public record LessonDto(BigDecimal lessonid, BigDecimal courseid, String title, String description, String videolink) {
    public LessonDto(BigDecimal lessonid, BigDecimal courseid, String title, String description, String videolink) {
        this.lessonid = lessonid;
        this.courseid = courseid;
        this.title = title;
        this.description = description;
        this.videolink = videolink;
    }
}
