package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;
import lombok.ToString;

@Builder
public record InstructorDto(String email, String password, String fullName, String specialization, String phone) {
    public InstructorDto(String email, String password, String fullName, String specialization, String phone) {
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.specialization = specialization;
        this.phone = phone;
    }
}
