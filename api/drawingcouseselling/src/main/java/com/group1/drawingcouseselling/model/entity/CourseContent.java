package com.group1.drawingcouseselling.model.entity;

import com.group1.drawingcouseselling.model.dto.CourseContentDto;
import com.group1.drawingcouseselling.model.enums.ECourseContentType;
import com.group1.drawingcouseselling.util.ObjectMapper;
import jakarta.persistence.*;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;

@Entity(name = "course_content")
public class CourseContent implements ObjectMapper<CourseContent, CourseContentDto> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "bigint")
    private BigDecimal id;
    @ManyToOne(targetEntity = Section.class, fetch = FetchType.LAZY, cascade = CascadeType.DETACH)
    @JoinColumn(name ="section_id", nullable = false, updatable = true)
    private Section section;
    @Column(name="title", nullable = false, updatable = true)
    private String title;
    @Column(name="description", nullable = false, updatable = true)
    private String description;
    @Column(name="video_link", nullable = false, updatable = true)
    private String videoLink;
    @Enumerated(EnumType.STRING)
    private ECourseContentType courseContentType;
    @Column(name = "create_date", nullable = false)
    private Date createDate;
    @Column(name="updated_date")
    private Date updateDate;
    @PreUpdate
    private void updateCourseContent(){
        this.updateDate = Date.valueOf(LocalDate.now());
    }
    @PrePersist
    private void createCreateDate(){
        this.createDate = Date.valueOf(LocalDate.now());
    }


    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
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

    @Override
    public CourseContent covertDtoToEntity(CourseContentDto data) {
        CourseContent lesson  = new CourseContent();
        lesson.setTitle(data.title());
        lesson.setDescription(data.description());
        lesson.setVideoLink(data.videoLink());
        lesson.setCreateDate(data.createDate());
        return lesson;
    }

    @Override
    public CourseContentDto convertEntityToDto(CourseContent data) {
        return CourseContentDto.builder()
                .id(data.getId())
                .title(data.getTitle())
                .description(data.getDescription())
                .videoLink(data.getVideoLink())
                .createDate(data.getCreateDate())
                .build();
    }
}
