package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

@Builder
public record InstructorRegisterDto(String email, String password, String fullName, String specialization, String phone,String avatar) {
    public InstructorRegisterDto(String email, String password, String fullName, String specialization, String phone, String avatar) {
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.specialization = specialization;
        this.phone = phone;
        this.avatar = avatar;
    }
}
