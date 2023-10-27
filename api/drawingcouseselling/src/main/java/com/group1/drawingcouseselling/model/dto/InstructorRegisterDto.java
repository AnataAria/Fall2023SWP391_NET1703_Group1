package com.group1.drawingcouseselling.model.dto;

import jakarta.validation.constraints.*;
import lombok.Builder;

@Builder
public record InstructorRegisterDto(
        @Email(message = "Please enter a valid email")
        @NotBlank(message = "Email can't be empty")
        String email,
        @NotBlank(message = "Password can't be empty")
        String password,
        @NotBlank(message = "Name can't be empty")
        String fullName,
        @NotBlank(message = "Specialization can't be empty")
        String specialization,
        @NotBlank(message = "Phone can't be empty")
        @Size(max = 12)
        String phone, String avatar) {
    public InstructorRegisterDto(String email, String password, String fullName, String specialization, String phone, String avatar) {
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.specialization = specialization;
        this.phone = phone;
        this.avatar = avatar;
    }
}
