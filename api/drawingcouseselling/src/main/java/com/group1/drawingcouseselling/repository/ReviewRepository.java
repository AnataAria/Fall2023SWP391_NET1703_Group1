package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Collection;

@Repository
public interface ReviewRepository extends JpaRepository<Review, BigDecimal> {
    @Query("SELECT r FROM review r WHERE r.course.id = :courseID")
    public Collection<Review> getReviewsByCourseID(@Param(value = "courseID") BigDecimal courseID);
    @Query("SELECT COUNT(r) FROM review r WHERE r.course.id = :courseID")
    public BigDecimal countAllByCourseId(@Param(value = "courseID") BigDecimal courseID);
    @Query("SELECT AVG(r.rating) FROM review r WHERE r.course.id = :courseID")
    public Double averageRatingOfCourse(@Param(value = "courseID") BigDecimal courseID);
}
