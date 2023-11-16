package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Salary;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Optional;

@Repository
public interface SalaryRepository extends JpaRepository<Salary, BigDecimal> {
    @Query(value = "SELECT s FROM salary s WHERE s.instructor.id = :instructorID " +
            "AND YEAR(s.salaryDate) = YEAR(CURRENT_DATE)" +
            " AND MONTH(s.salaryDate) = MONTH(CURRENT_DATE )")
    public Optional<Salary> getSalariesByInstructorID(@Param(value = "instructorID") BigDecimal instructorID);
}
