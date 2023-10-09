package com.group1.drawingcouseselling.model.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;

@Entity(name = "review")
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id", columnDefinition = "bigint")
    private BigDecimal id;
    @ManyToOne(targetEntity = Customer.class, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "customer_id", nullable = false, updatable = true)
    private Customer customer;
    @ManyToOne(targetEntity = Course.class, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "course_id", nullable = false, updatable = false)
    private Course course;
    @Column(name = "rating", nullable = false, updatable = true)
    private Double rating;
    @Column(name = "comment", nullable = false, updatable = true)
    private String comment;
    @Temporal(TemporalType.DATE)
    @Column(name = "feedback_date")
    private Date feedbackDate;
    @Column(name = "update_date", nullable = true)
    private Date updateDate;
    @PreUpdate
    private void updateReview(){
        this.updateDate = Date.valueOf(LocalDate.now());
    }

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

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Double getRating() {
        return rating;
    }

    public void setRating(Double rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getFeedbackDate() {
        return feedbackDate;
    }

    public void setFeedbackDate(Date feedbackDate) {
        this.feedbackDate = feedbackDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}
