package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.CourseContent;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
@Repository
public interface CourseContentRepository extends JpaRepository<CourseContent, BigDecimal> {
}
