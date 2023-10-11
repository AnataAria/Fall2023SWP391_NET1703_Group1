package com.group1.drawingcouseselling.model.entity;

import com.group1.drawingcouseselling.model.dto.CustomerDto;
import com.group1.drawingcouseselling.model.enums.EGender;
import com.group1.drawingcouseselling.util.ObjectMapper;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

@Entity(name = "customer")
public class Customer implements ObjectMapper<Customer, CustomerDto> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id", columnDefinition = "bigint")
    private BigDecimal id;
    @Column(name="fullname")
    private String fullName;
    @Column(name="birhthdate")
    private Date birthDate;
    @Enumerated(EnumType.ORDINAL)
    private EGender gender;
    @Column(name="avatar")
    private String path;
    @OneToOne(targetEntity = Account.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = false)
    @JoinColumn(name = "account_id")
    private Account account;
    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(
            name = "my_learning",
            joinColumns = @JoinColumn(name = "customer_id"),
            inverseJoinColumns = @JoinColumn(name = "course_id")
    )
    private List<Course> courseList;

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

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public EGender getGender() {
        return gender;
    }

    public void setGender(EGender gender) {
        this.gender = gender;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<Course> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<Course> courseList) {
        this.courseList = courseList;
    }

    @Override
    public Customer covertDtoToEntity(CustomerDto data) {
        Customer customer = new Customer();
        customer.setId(data.customerID());
        customer.setGender(data.gender());
        customer.setFullName(data.fullName());
        customer.setFullName(data.fullName());
        return customer;
    }

    @Override
    public CustomerDto convertEntityToDto(Customer data) {
        return CustomerDto.builder()
                .customerID(data.getId())
                .fullName(data.getFullName())
                .birthDate(data.getBirthDate())
                .gender(data.getGender())
                .build();
    }
}
