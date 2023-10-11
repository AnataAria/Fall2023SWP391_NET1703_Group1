package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;

@Entity(name = "course_content")
public class CourseContent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "bigint")
    private BigDecimal id;
    @ManyToOne(targetEntity = Course.class,fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "course_id", nullable = false, updatable = false)
    private Course course;
    @ManyToOne(targetEntity = Course.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name ="section_id", nullable = false, updatable = true)
    private Section section;
    @Column(name="title", nullable = false, updatable = true)
    private String title;
    @Column(name="description", nullable = false, updatable = true)
    private String description;
    @Column(name="video_link", nullable = false, updatable = true)
    private String videoLink;
    @Temporal(TemporalType.DATE)
    @Column(name = "create_date")
    private Date createDate;
    @Column(name="updated_date")
    private Date updateDate;
    @PreUpdate
    private void updateCourseContent(){
        this.updateDate = Date.valueOf(LocalDate.now());
    }

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Section getSection() {
        return section;
    }

    public void setSection(Section section) {
        this.section = section;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getVideoLink() {
        return videoLink;
    }

    public void setVideoLink(String videoLink) {
        this.videoLink = videoLink;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}
