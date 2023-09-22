package com.group1.drawingcouseselling.model.entity;


import jakarta.persistence.*;

import java.io.Serializable;
import java.math.BigDecimal;

@Entity(name = "instructor")
public class Instructor implements Serializable {
    @Id
    @Column(name = "id", columnDefinition = "bigint")
    private BigDecimal id;
    @Column(name = "fullname", nullable = false)
    private String fullName;
    @Column(name = "specialization", nullable = false)
    private String specialization;
    @Column(name ="phone_number")
    private String phone;
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

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
}
