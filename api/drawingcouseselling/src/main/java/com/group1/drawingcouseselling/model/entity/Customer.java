package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

@Entity(name = "customer")
@NoArgsConstructor(force = true)
@AllArgsConstructor
@Getter
@Setter
public class Customer implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id", columnDefinition = "bigint")
    private BigDecimal id;
    @Column(name="email", nullable = false, unique = true)
    private String email;
    @Column(name="password", nullable = false)
    private String password;
    @Column(name="fullname")
    private String fullName;
    @OneToOne(fetch = FetchType.LAZY,orphanRemoval = false, cascade = CascadeType.ALL, targetEntity = Account.class)
    private Account account;
}
