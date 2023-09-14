package com.group1.drawingcouseselling.model.entity;


import jakarta.persistence.*;

import java.io.Serializable;
import java.math.BigDecimal;

@Entity
public class Instructor implements Serializable {
    @Id
    @Column(name = "id", columnDefinition = "bigint")
    private BigDecimal id;
    private String fullName;
    private String specialization;
    private String phone;

    @OneToOne(targetEntity = Account.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = false)
    private Account account;
}
