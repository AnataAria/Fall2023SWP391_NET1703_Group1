package com.group1.drawingcouseselling.model.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Getter
@Setter
public class OrderDto {
    private double price;
    private String currency;
    private String method;
    private String intent;
    private String description;
}
