package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.CourseExamCompletion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
@Repository
public interface CourseExamAttemptRepository extends JpaRepository<CourseExamCompletion, BigDecimal> {
}
