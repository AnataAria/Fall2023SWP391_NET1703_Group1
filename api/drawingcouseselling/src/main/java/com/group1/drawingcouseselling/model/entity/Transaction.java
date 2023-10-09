package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;

import java.io.Serializable;
import java.math.BigDecimal;

@Entity(name = "transaction")
public class Transaction implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "bigint")
    private BigDecimal id;
    @ManyToOne(targetEntity = Customer.class, cascade = CascadeType.ALL)
    @JoinColumn(name = "customer_id")
    private Customer customer;
    @Column(name = "total_amount", nullable = false, columnDefinition = "bigint")
    private BigDecimal totalAmount;
    @Column(name = "payment_method")
    private String paymentMethod;
}
