package com.group1.drawingcouseselling.model.entity;

import com.group1.drawingcouseselling.model.dto.AccountDto;
import com.group1.drawingcouseselling.model.enums.ERole;
import com.group1.drawingcouseselling.util.ObjectMapper;
import jakarta.persistence.*;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.Collection;
import java.util.List;
@Entity(name = "account")
@NoArgsConstructor
public class Account implements UserDetails, ObjectMapper<Account, AccountDto> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id", columnDefinition = "bigint")
    private BigDecimal id;
    @Column(name = "email", nullable = false,unique = true)
    private String email;
    @Column(name = "password", nullable = false)
    private String encodePassword;
    @Column(name="role", nullable = false)
    @Enumerated(EnumType.STRING)
    private ERole role;
    @Column(name="create_date", nullable = false, columnDefinition = "date")
    private Date createDate;
    @Column(name = "active", nullable = false)
    private Boolean isActive;
    @Column(name="status")
    private Boolean status;

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEncodePassword() {
        return encodePassword;
    }

    public void setEncodePassword(String encodePassword) {
        this.encodePassword = encodePassword;
    }

    public ERole getRole() {
        return role;
    }

    public void setRole(ERole role) {
        this.role = role;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Boolean getActive() {
        return isActive;
    }

    public void setActive(Boolean active) {
        isActive = active;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return List.of(new SimpleGrantedAuthority(role.name()));
    }

    @Override
    public String getPassword() {
        return getEncodePassword();
    }

    @Override
    public String getUsername() {
        return getEmail();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return getStatus();
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public Account covertDtoToEntity(AccountDto data) {
        Account account = new Account();
        account.setEmail(data.email());
        account.setEncodePassword(data.password());
        account.setRole(data.role());
        account.setCreateDate(data.createDate());
        account.setActive(data.isActive());
        return account;
    }

    @Override
    public AccountDto convertEntityToDto(Account data) {
        return new AccountDto(
                data.getEmail(),
                data.getEncodePassword(),
                data.getRole(),
                data.getCreateDate(),
                data.isEnabled()
        );
    }
}
