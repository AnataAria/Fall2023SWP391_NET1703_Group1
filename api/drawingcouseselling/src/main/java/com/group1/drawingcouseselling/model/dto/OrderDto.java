package com.group1.drawingcouseselling.model.dto;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Getter
@Setter
public class OrderDto {
    @NotBlank
    @Min(value = 1, message = "Price must be greater than or equal to 1")
    private double price;
    @NotBlank
    private String currency;
    @NotBlank
    private String method;
    @NotBlank
    private String intent;
    private String description;
}
