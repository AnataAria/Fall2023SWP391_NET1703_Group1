package com.group1.drawingcouseselling.model.entity;

import com.group1.drawingcouseselling.model.dto.SectionDto;
import com.group1.drawingcouseselling.util.ObjectMapper;
import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity(name = "section")
public class Section implements ObjectMapper<Section, SectionDto> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "bigint")
    private BigDecimal id;
    @ManyToOne(targetEntity = Course.class, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "course_id", nullable = false)
    private Course course;
    @Column(name = "order_pos", columnDefinition = "bigint", nullable = false)
    private Integer sectionOrder;
    @Column(name = "title")
    private String title;

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

    public Integer getSectionOrder() {
        return sectionOrder;
    }

    public void setSectionOrder(Integer sectionOrder) {
        this.sectionOrder = sectionOrder;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public Section covertDtoToEntity(SectionDto data) {
        Section sec = new Section();
        sec.setId(data.id());
        sec.setSectionOrder(data.sectionOrder());
        sec.setTitle(data.title());
        return sec;
    }

    @Override
    public SectionDto convertEntityToDto(Section data) {
        return SectionDto.builder()
                .id(data.getId())
                .sectionOrder(data.getSectionOrder())
                .title(data.getTitle())
                .build();
    }
}
