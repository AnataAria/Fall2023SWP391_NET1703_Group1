package com.group1.drawingcouseselling.model.dto;

import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.model.enums.ERole;
import lombok.Builder;
import lombok.NonNull;

import java.sql.Date;
@Builder
public record AccountDto(@NonNull String email, String password, ERole role, Date createDate, Boolean isActive) {
    public AccountDto(String email, String password, ERole role, Date createDate, Boolean isActive) {
        this.email = email;
        this.password = password;
        this.role = role;
        this.createDate = createDate;
        this.isActive = isActive;
    }

//    public AccountDto(Account account){
//        this.email = account.getEmail();
//        this.password = account.getPassword();
//        this.role = account.getRole();
//        this.createDate = account.getCreateDate();
//        this.isActive = account.getActive();
//    }
}
