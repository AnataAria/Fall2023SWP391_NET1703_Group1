package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity(name = "salary")
public class Salary {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "bigint")
    private BigDecimal id;
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, targetEntity = Instructor.class)
    @JoinColumn(name = "instructor_id", updatable = true, nullable = false)
    private Instructor instructor;
    @Column(name = "email", nullable = false)
    private String email;
    @Column(name = "amount", columnDefinition = "bigint", nullable = false)
    private BigDecimal amount;
    @Column(name = "currency", nullable = false)
    private String currency;
    @Column(name = "recipient_wallet", nullable = false)
    private String recipientWallet;
}
