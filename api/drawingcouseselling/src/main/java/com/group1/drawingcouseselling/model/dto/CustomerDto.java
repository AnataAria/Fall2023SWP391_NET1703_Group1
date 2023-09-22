package com.group1.drawingcouseselling.model.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import net.minidev.json.annotate.JsonIgnore;

import java.math.BigDecimal;
import java.sql.Date;


public record CustomerDto(BigDecimal customerID, String fullName, Date birthDate, Integer gender, Byte[] avatar, String email, Date joinDate) {

}
