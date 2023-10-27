package com.group1.drawingcouseselling.model.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.group1.drawingcouseselling.model.enums.ERole;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.Builder;
import lombok.NonNull;

import java.sql.Date;

@Builder
public record AccountDto(
        @NonNull
        @Email(message = "Please enter a valid email")
        @NotBlank
        String email,
        @JsonIgnore
        @NotBlank
        String password, ERole role, Date createDate, Boolean isActive) {
    public AccountDto(String email, String password, ERole role, Date createDate, Boolean isActive) {
        this.email = email;
        this.password = password;
        this.role = role;
        this.createDate = createDate;
        this.isActive = isActive;
    }
}
