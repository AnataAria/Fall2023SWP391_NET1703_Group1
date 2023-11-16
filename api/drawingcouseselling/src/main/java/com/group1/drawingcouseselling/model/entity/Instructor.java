package com.group1.drawingcouseselling.model.entity;


import com.group1.drawingcouseselling.model.dto.InstructorDto;
import com.group1.drawingcouseselling.util.ObjectMapper;
import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity(name = "instructor")
public class Instructor implements ObjectMapper<Instructor, InstructorDto> {
    @Id
    @Column(name = "id", columnDefinition = "bigint")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private BigDecimal id;
    @Column(name = "fullname", nullable = false)
    private String fullName;
    @Column(name = "specialization", nullable = false)
    private String specialization;
    @Column(name ="phone_number")
    private String phone;
    @Column(name = "paypal_email")
    private String paypalEmail;
    @OneToOne(targetEntity = Account.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = false)
    @JoinColumn(name = "account_id")
    private Account account;
    @Column(name = "avatar_url")
    private String avatar;

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public Instructor covertDtoToEntity(InstructorDto data) {
        return null;
    }

    public String getPaypalEmail() {
        return paypalEmail;
    }

    public void setPaypalEmail(String paypalEmail) {
        this.paypalEmail = paypalEmail;
    }

    @Override
    public InstructorDto convertEntityToDto(Instructor data) {
        return InstructorDto.builder()
                .id(data.getId())
                .fullName(data.getFullName())
                .specialization(data.getSpecialization())
                .phone(data.getPhone())
                .avatar(data.getAvatar())
                .paypalEmail(data.getPaypalEmail())
                .build();
    }
}
