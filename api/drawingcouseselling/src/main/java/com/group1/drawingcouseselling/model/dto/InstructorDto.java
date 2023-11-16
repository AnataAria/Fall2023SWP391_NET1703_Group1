package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;

import java.math.BigDecimal;

@Builder
public record InstructorDto(BigDecimal id, String fullName, String specialization, String phone,String avatar, String paypalEmail) {
    public InstructorDto(BigDecimal id, String fullName, String specialization, String phone, String avatar, String paypalEmail) {
        this.id = id;
        this.fullName = fullName;
        this.specialization = specialization;
        this.phone = phone;
        this.avatar = avatar;
        this.paypalEmail = paypalEmail;
    }
}
