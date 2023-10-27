package com.group1.drawingcouseselling.model.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ChangePasswordDto {
    @NotBlank(message = "OTP can't be empty")
    private int otp;
    @NotBlank(message = "Email can't be empty")
    @Email(message = "Please enter a valid email")
    private String email;
    @NotBlank(message = "Password can't be empty")
    private String password;
}
