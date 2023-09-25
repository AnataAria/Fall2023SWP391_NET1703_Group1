package com.group1.drawingcouseselling.model.dto;

import com.group1.drawingcouseselling.model.enums.EGender;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;

@Builder
public record RegisterRequest(String email,String fullname, String password, Date birthDate, EGender gender) {
    public RegisterRequest(String email,String fullname, String password, Date birthDate, EGender gender){
        this.email = email;
        this.fullname = fullname;
        this.password = password;
        this.birthDate = birthDate;
        this.gender = gender;
    }
}
