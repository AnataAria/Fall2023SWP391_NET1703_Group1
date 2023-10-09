package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.sql.Date;

@Entity(name = "course_section_completion")
public class CourseSectionCompletion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "bigint")
    private BigDecimal id;
    @ManyToOne(targetEntity = Customer.class, fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    @JoinColumn(name = "customer_id", nullable = false, updatable = true)
    private Customer customer;
    @ManyToOne(targetEntity = Section.class, fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name= "section_id", nullable = false, updatable = true)
    private Section section;
    @Column(name = "finish_date")
    private Date finishDate;
    @Column(name = "done")
    private Boolean isDone;

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Section getSection() {
        return section;
    }

    public void setSection(Section section) {
        this.section = section;
    }

    public Date getFinishDate() {
        return finishDate;
    }

    public void setFinishDate(Date finishDate) {
        this.finishDate = finishDate;
    }

    public Boolean getDone() {
        return isDone;
    }

    public void setDone(Boolean done) {
        isDone = done;
    }
}
