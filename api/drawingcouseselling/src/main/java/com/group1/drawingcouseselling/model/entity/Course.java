package com.group1.drawingcouseselling.model.entity;

import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.util.ObjectMapper;
import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity(name = "course")
public class Course implements ObjectMapper<Course, CourseDto> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "bigint", nullable = false)
    private BigDecimal id;
    @ManyToOne(cascade = CascadeType.ALL, targetEntity = Instructor.class, fetch = FetchType.LAZY)
    @JoinColumn(name="instructor_id", updatable = true, nullable = false)
    private Instructor instuctor;
    @Column(name="course_name")
    private String name;
    @Column(columnDefinition = "bigint", nullable = false, name = "price")
    private BigDecimal price;
    @Column(name="description", columnDefinition = "text", nullable = false)
    private String description;
    @Column(name="duration")
    private String duration;
    @Column(name="status", nullable = false)
    private Boolean status;
    @PrePersist
    public void updateStatusWhenCreate(){
        this.status = true;
    }

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

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
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

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    @Override
    public Course covertDtoToEntity(CourseDto data) {
        Course dataset = new Course();
        dataset.setId(data.id());
        dataset.setName(data.name());
        dataset.setPrice(data.price());
        dataset.setDescription(data.durations());
        return dataset;
    }

    @Override
    public CourseDto convertEntityToDto(Course data) {
        return CourseDto.builder()
                .id(data.getId())
                .name(data.getName())
                .price(data.getPrice())
                .description(data.getDescription())
                .durations(data.getDuration())
                .instructorID(data.getInstuctor().getId())
                .instructorName(data.getInstuctor().getFullName())
                .build();
    }
}
