package com.group1.drawingcouseselling.model.entity;

import com.group1.drawingcouseselling.model.enums.EGender;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

@Entity(name = " staff")
@NoArgsConstructor(force = true)
public class Staff implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id" , columnDefinition = "bigint")
    private BigDecimal id;
    @Column(name = "full_name")
    private String fullName;
    @Column(name = "birthday")
    private Date birthDate;
    @Column(name = "gender", nullable = true)
    @Enumerated(EnumType.STRING)
    private EGender gender;
    @Column(name = "injob_date")
    private Date injobDate;
    @OneToOne(targetEntity = Account.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = false)
    @JoinColumn(name = "account_id")
    private Account account;

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public EGender getGender() {
        return gender;
    }

    public void setGender(EGender gender) {
        this.gender = gender;
    }

    public Date getInjobDate() {
        return injobDate;
    }

    public void setInjobDate(Date injobDate) {
        this.injobDate = injobDate;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
}
