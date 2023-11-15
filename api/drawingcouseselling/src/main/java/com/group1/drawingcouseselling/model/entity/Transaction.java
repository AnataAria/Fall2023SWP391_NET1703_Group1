package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;

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
    @Column(name = "description")
    private String description;
    @Column(name ="transaction_date", nullable = false)
    private Date transactionDate;

    @PrePersist
    private void createTransaction(){
        setTransactionDate(Date.valueOf(LocalDate.now()));
    }

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public BigDecimal getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(BigDecimal totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getTransactionDate() {
        return transactionDate;
    }

    public void setTransactionDate(Date transactionDate) {
        this.transactionDate = transactionDate;
    }
}
