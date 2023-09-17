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
}
