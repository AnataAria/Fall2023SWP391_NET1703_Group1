package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity(name = "course_detail")
public class CourseDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "course_detail", columnDefinition = "bigint")
    private BigDecimal id;
    @ManyToOne(targetEntity = Course.class, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "course_id", nullable = false, updatable = false)
    private Course course;
    private String aboutCourse;

}
