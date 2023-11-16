package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;

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
    @Column(name = "amount", columnDefinition = "decimal(20,5)", nullable = false)
    private BigDecimal amount;
    @Column(name = "currency", nullable = false)
    private String currency;
    @Column(name = "recipient_wallet", nullable = false)
    private String recipientWallet;
    @Column(name = "salary_date", nullable = false)
    private Date salaryDate;

    @PrePersist
    private void createSalary(){
        setSalaryDate(Date.valueOf(LocalDate.now()));
    }
    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public Instructor getInstructor() {
        return instructor;
    }

    public void setInstructor(Instructor instructor) {
        this.instructor = instructor;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getRecipientWallet() {
        return recipientWallet;
    }

    public void setRecipientWallet(String recipientWallet) {
        this.recipientWallet = recipientWallet;
    }

    public Date getSalaryDate() {
        return salaryDate;
    }

    public void setSalaryDate(Date salaryDate) {
        this.salaryDate = salaryDate;
    }
}
