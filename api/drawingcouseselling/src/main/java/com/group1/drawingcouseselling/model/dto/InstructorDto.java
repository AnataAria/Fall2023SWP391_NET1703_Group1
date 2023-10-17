package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;

@Builder
public record InstructorDto(BigDecimal id, String fullName, String specialization, String phone,String avatar) {
    public InstructorDto(BigDecimal id, String fullName, String specialization, String phone, String avatar) {
        this.id = id;
        this.fullName = fullName;
        this.specialization = specialization;
        this.phone = phone;
        this.avatar = avatar;
    }
}
