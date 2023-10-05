package com.group1.drawingcouseselling.model.dto;

import com.group1.drawingcouseselling.model.enums.EGender;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import net.minidev.json.annotate.JsonIgnore;

import java.math.BigDecimal;
import java.sql.Date;

@Builder
public record CustomerDto(BigDecimal customerID, String fullName, Date birthDate, EGender gender, String email, Date joinDate) {

}
