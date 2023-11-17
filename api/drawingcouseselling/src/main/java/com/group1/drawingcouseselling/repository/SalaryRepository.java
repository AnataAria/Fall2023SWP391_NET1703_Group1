package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Salary;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.Collection;
import java.util.Optional;

@Repository
public interface SalaryRepository extends JpaRepository<Salary, BigDecimal> {
    @Query(value = "SELECT s FROM salary s WHERE s.instructor.id = :instructorID " +
            "AND YEAR(s.salaryDate) = YEAR(CURRENT_DATE)" +
            " AND MONTH(s.salaryDate) = MONTH(CURRENT_DATE )")
    public Optional<Salary> getSalariesByInstructorID(@Param(value = "instructorID") BigDecimal instructorID);
    @Query(value = "SELECT s FROM salary s WHERE " +
            "YEAR(s.salaryDate) = YEAR(:salaryDate)" +
            " AND MONTH(s.salaryDate) = MONTH(:salaryDate) " +
            "AND s.instructor.paypalEmail IS NOT NULL AND " +
            " s.instructor.paypalEmail <> '' AND " +
            "s.amount > 0")
    public Collection<Salary> getSalariesByYearsAndMonth(@Param(value = "salaryDate")Date salaryDate);
}
