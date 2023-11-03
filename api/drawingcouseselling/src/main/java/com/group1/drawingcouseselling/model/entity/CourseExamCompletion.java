package com.group1.drawingcouseselling.model.entity;

import com.group1.drawingcouseselling.model.enums.EExamStatus;
import jakarta.persistence.*;

import java.math.BigDecimal;
import java.sql.Date;

@Entity(name = "course_exam_completion")
public class CourseExamCompletion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "bigint")
    private BigDecimal id;
    @ManyToOne(targetEntity = Course.class, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "customer_id", nullable = false, updatable = true)
    private Customer customer;
    @ManyToOne(targetEntity = CourseContent.class, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "exam_id", nullable = false, updatable = false)
    private CourseContent courseContent;
    @Enumerated(EnumType.STRING)
    @Column(name="status", nullable = false)
    private EExamStatus status;
    @Column(name = "score")
    private Character score;
    @Column(name="submit_date")
    private Date submitDate;

    @PreUpdate
    private void courseExamChecked(){
        if(score != null){
            switch (score) {
                case 'A', 'B' -> status = EExamStatus.PASSED;
                case 'C', 'D', 'E', 'F' -> status = EExamStatus.FAILED;
                default -> status = EExamStatus.SUBMITTED;
            }
        }
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

    public EExamStatus getStatus() {
        return status;
    }

    public void setStatus(EExamStatus status) {
        this.status = status;
    }

    public Character getScore() {
        return score;
    }

    public void setScore(Character score) {
        this.score = score;
    }

    public Date getSubmitDate() {
        return submitDate;
    }

    public void setSubmitDate(Date submitDate) {
        this.submitDate = submitDate;
    }
}
