package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.CourseSectionCompletion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
@Repository
public interface CourseSectionCompletionRepository extends JpaRepository<CourseSectionCompletion, BigDecimal> {
}
