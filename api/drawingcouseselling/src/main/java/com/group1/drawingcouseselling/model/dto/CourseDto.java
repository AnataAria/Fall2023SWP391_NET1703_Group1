package com.group1.drawingcouseselling.model.dto;

public record CourseDto(String name, String price, String description, String durations) {
    public CourseDto(String name, String price, String description, String durations){
        this.name = name;
        this.price = price;
        this.description = description;
        this.durations = durations;
    }
}
