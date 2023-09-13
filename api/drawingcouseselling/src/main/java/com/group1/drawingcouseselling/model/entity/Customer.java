package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.sql.Date;

@Entity(name = "customer")
@NoArgsConstructor(force = true)
@AllArgsConstructor
@Getter
@Setter
public class Customer {
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
    @Column(name="createdate", nullable = false)
    private Date createDate;
    @Column(name="isactive")
    private Boolean isActive;
    @Column(name="isactive")
    private Boolean accountStatus;
}
