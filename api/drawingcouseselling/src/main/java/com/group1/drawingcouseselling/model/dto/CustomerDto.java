package com.group1.drawingcouseselling.model.dto;

import com.group1.drawingcouseselling.model.enums.EGender;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.Builder;

import java.math.BigDecimal;
import java.sql.Date;

@Builder
public record CustomerDto(BigDecimal customerID,
                          @NotBlank(message = "Name can't be empty")
                          String fullName,
                          @NotBlank(message = "Birthday can't be empty")
                          Date birthDate,
                          @NotBlank(message = "Gender can't be empty")
                          EGender gender,
                          @Email(message = "Please enter a valid email address")
                          @NotBlank(message = "Email can't be empty")
                          String email, Date joinDate) {

}
