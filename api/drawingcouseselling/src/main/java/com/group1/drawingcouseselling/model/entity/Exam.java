package com.group1.drawingcouseselling.model.entity;

import com.group1.drawingcouseselling.model.enums.EExamStatus;
import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity(name = "exam")
public class Exam {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "bigint")
    private BigDecimal id;
    @OneToOne(targetEntity = Instructor.class, cascade = CascadeType.DETACH)
    @JoinColumn(name = "assignment_instructor")
    private Instructor assignmentInstructor;
    @OneToOne(targetEntity = CourseContentCompletion.class, cascade = {CascadeType.DETACH, CascadeType.PERSIST}, fetch = FetchType.LAZY)
    @JoinColumn(name = "course_content_completion_id")
    private CourseContentCompletion courseContentCompletion;
    @Column(name = "score")
    private Character score;
    @Column(name = "art_url", nullable = false)
    private String artLinked;
    @Column(name = "instructor_comment")
    private String instructorComment;
    @Enumerated(EnumType.STRING)
    private EExamStatus submitStatus;
    @PreUpdate
    private void updateScoreStatus(){
        if(score != null){
            courseContentCompletion.setDone(switch (score) {
                case 'A', 'B', 'C' -> true;
                default -> false;
            });

        }else {
            courseContentCompletion.setDone(false);
            submitStatus = EExamStatus.SUBMITTED;
        }
    }

    @PrePersist
    private void updateExamDefaultStatus(){
        if(score == null) submitStatus = EExamStatus.SUBMITTED;
    }

    public BigDecimal getId() {
        return id;
    }

    public void setId(BigDecimal id) {
        this.id = id;
    }

    public Instructor getAssignmentInstructor() {
        return assignmentInstructor;
    }

    public void setAssignmentInstructor(Instructor assignmentInstructor) {
        this.assignmentInstructor = assignmentInstructor;
    }

    public CourseContentCompletion getCourseContentCompletion() {
        return courseContentCompletion;
    }

    public void setCourseContentCompletion(CourseContentCompletion courseContentCompletion) {
        this.courseContentCompletion = courseContentCompletion;
    }

    public Character getScore() {
        return score;
    }

    public void setScore(Character score) {
        this.score = score;
    }

    public String getArtLinked() {
        return artLinked;
    }

    public void setArtLinked(String artLinked) {
        this.artLinked = artLinked;
    }

    public EExamStatus getSubmitStatus() {
        return submitStatus;
    }

    public void setSubmitStatus(EExamStatus submitStatus) {
        this.submitStatus = submitStatus;
    }

    public String getInstructorComment() {
        return instructorComment;
    }

    public void setInstructorComment(String instructorComment) {
        this.instructorComment = instructorComment;
    }
}
