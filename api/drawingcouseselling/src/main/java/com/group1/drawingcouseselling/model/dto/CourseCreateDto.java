package com.group1.drawingcouseselling.model.dto;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

import java.math.BigDecimal;

public record CourseCreateDto(BigDecimal id,
                              @NotBlank(message = "Name is mandatory")
                              @NotNull(message = "Name is mandatory")
                              String name,
                              @NotBlank(message = "Description is mandatory")
                           @NotNull(message = "Description is mandatory")
                           String description,
                              @NotBlank(message = "Duration is mandatory")
                           @NotNull(message = "Duration is mandatory")
                           String durations,
                              @Min(value = 0, message = "Price is bigger than 0")
                              BigDecimal price
                           ) {
    public CourseCreateDto(BigDecimal id, String name, String description, String durations, BigDecimal price){
        this.id = id;
        this.name = name;
        this.description = description;
        this.durations = durations;
        this.price = price;
    }
}
