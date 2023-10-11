package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.sql.Date;

@Entity(name = "comment")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "bigint")
    private BigDecimal id;
    @ManyToOne(targetEntity = CourseContent.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "course_content_id", nullable = false)
    private CourseContent courseContent;
    @Column(name = "comment_date")
    @Temporal(TemporalType.DATE)
    private Date commentDate;
    @Column(name = "comment")
    private String comment;
    @Column(name = "user_name")
    private String name;
}
