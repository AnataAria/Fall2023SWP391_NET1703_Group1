package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.CourseContentCompletion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Collection;

@Repository
public interface CourseContentCompletionRepository extends JpaRepository<CourseContentCompletion, BigDecimal> {
    @Query("SELECT c FROM course_content_completion c " +
            "WHERE c.customer.id = :customerID " +
            "AND c.courseContent.id = :courseContentID")
    public CourseContentCompletion searchCourseContentCompletionByCourseContentAndCustomerID(@Param(value = "courseContentID") BigDecimal courseContentID, @Param(value = "customerID") BigDecimal customerID);
    @Query("SELECT c3 FROM course_content_completion c3 " +
            "INNER JOIN course_content c2 ON c3.courseContent.id = c2.id" +
            " INNER JOIN section s ON c2.section.id = s.id" +
            " INNER JOIN course c ON c.id = s.course.id " +
            " WHERE c.id = :courseID AND c3.customer.id = :customerID")
    public Collection<CourseContentCompletion> getCourseContentCompletionByCustomerID(@Param(value = "customerID") BigDecimal customerID, @Param(value = "courseID") BigDecimal courseID);

    @Query("SELECT COUNT(c3) FROM course_content_completion  c3 WHERE c3.courseContent.id = :courseSectionID")
    public BigDecimal countCustomerLearningCourseSection(@Param("courseSectionID") BigDecimal courseSectionID);
}
