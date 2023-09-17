package com.group1.drawingcouseselling.model.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import net.minidev.json.annotate.JsonIgnore;

import java.math.BigDecimal;
import java.sql.Date;

@Data
@Getter
@Setter
public class CustomerDto {
    private BigDecimal customerId;
    private String fullName;
    private Date birthDate;
    private Integer gender;
    private byte[] avatar;
    private String email;
    private Date joinDate;
    @JsonIgnore
    private BigDecimal accountID;
}
