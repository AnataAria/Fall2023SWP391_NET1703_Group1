package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity(name = "course")
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "bigint", nullable = false)
    private BigDecimal id;
    @ManyToOne(cascade = CascadeType.ALL, targetEntity = Instructor.class, fetch = FetchType.LAZY)
    @JoinColumn(name="instructor_id", updatable = true, nullable = false)
    private Instructor instuctor;
    private String name;
    private String price;
    private String description;
    private String duration;

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public Instructor getInstuctor() {
        return instuctor;
    }

    public void setInstuctor(Instructor instuctor) {
        this.instuctor = instuctor;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }
}
