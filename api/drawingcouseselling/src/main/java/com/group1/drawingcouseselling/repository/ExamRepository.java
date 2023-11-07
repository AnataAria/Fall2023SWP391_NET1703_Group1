package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Exam;
import com.group1.drawingcouseselling.model.enums.EExamStatus;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Optional;

@Repository
public interface ExamRepository extends JpaRepository<Exam, BigDecimal> {
    @Query("SELECT e FROM exam e INNER JOIN course_content_completion ccc ON e.courseContentCompletion.id = ccc.id" +
            " INNER JOIN course_content cc ON cc.id = ccc.courseContent.id WHERE ccc.customer.id = :customerID AND cc.id = :courseContentID")
    public Optional<Exam> getExamByCustomerIdAndCourseContentId(@Param(value = "customerID") BigDecimal customerID,@Param(value = "courseContentID") BigDecimal courseContentID);
    @Query(value = "SELECT e FROM exam e WHERE e.assignmentInstructor.id = :instructorID AND e.submitStatus = :status",
    countQuery = "SELECT COUNT(e) FROM exam e WHERE e.assignmentInstructor.id = :instructorID AND e.submitStatus = :status")
    public Page<Exam> getExamNotAssignedByInstructorIdAndStatusOnPaging(@Param(value = "instructorID") BigDecimal instructorID, @Param(value = "status")EExamStatus status, Pageable pageable);
}
