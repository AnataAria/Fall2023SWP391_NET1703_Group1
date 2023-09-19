package com.group1.drawingcouseselling.model.dto;

import com.group1.drawingcouseselling.model.enums.ERole;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.sql.Date;
import java.util.Collection;
import java.util.List;
@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class AccountDto {
    private String email;
    private String password;
    private ERole role;
    private Date createDate;
    private Boolean isActive;

}
