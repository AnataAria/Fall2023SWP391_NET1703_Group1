package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

@Entity(name = " staff")
@Getter
@Setter
public class Staff implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id" , columnDefinition = "bigint")
    private BigDecimal id;
    @Column(name = "full_name")
    private String fullName;
    @Column(name = "birthday")
    private Date birthDate;
    @Column(name = "gender", length = 1, nullable = true)
    private Integer gender;
    @Column(name = "injob_date")
    private Date injobDate;
    @OneToOne(fetch = FetchType.LAZY,orphanRemoval = false, cascade = CascadeType.ALL, targetEntity = Account.class)
    private Account account;
}
