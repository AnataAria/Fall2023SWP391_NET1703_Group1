package com.group1.drawingcouseselling.model.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;

import java.math.BigDecimal;
@Builder
public record CourseDto(BigDecimal id,
                        @NotBlank(message = "Name is mandatory") String name,
                        @Min(value = 0, message = "Price is bigger than 0")
                        BigDecimal price,
                        @NotBlank(message = "Description is mandatory")
                        String description,
                        @NotBlank(message = "Duration is mandatory")
                        String durations,
                        @NotNull(message = "Instructor ID is mandatory")
                        BigDecimal instructorID,
                        @NotBlank(message = "Instructor Name is mandatory")
                        String instructorName) {
    public CourseDto(BigDecimal id, String name, BigDecimal price, String description, String durations, BigDecimal instructorID, String instructorName) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.durations = durations;
        this.instructorID = instructorID;
        this.instructorName = instructorName;
    }
}
