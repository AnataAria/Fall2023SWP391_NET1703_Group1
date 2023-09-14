package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

@Entity
@NoArgsConstructor
public class Account implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id", columnDefinition = "bigint")
    private BigDecimal id;
    @Column(name = "email", nullable = false,unique = true)
    private String email;
    @Column(name = "password", nullable = false)
    private String encodePassword;
    @Column(name="role", nullable = false)
    private int role;
    @Column(name="create_date", nullable = false)
    private Date createDate;
    @Column(name = "active", nullable = false)
    private Boolean isActive;
    @Column(name="status")
    private Boolean status;
}
