package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Exam;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
@Repository
public interface ExamRepository extends JpaRepository<Exam, BigDecimal> {
}
