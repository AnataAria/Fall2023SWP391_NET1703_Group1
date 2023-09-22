package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;
import net.minidev.json.annotate.JsonIgnore;

import java.math.BigDecimal;
@Builder
public record CourseDto(String name, BigDecimal price, String description, String durations, @JsonIgnore BigDecimal instructorID, String instructorName) {
    public CourseDto(String name, BigDecimal price, String description, String durations, BigDecimal instructorID, String instructorName) {
        this.name = name;
        this.price = price;
        this.description = description;
        this.durations = durations;
        this.instructorID = instructorID;
        this.instructorName = instructorName;
    }
}
