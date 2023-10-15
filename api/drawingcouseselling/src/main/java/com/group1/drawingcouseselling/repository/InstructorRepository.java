package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Instructor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Optional;

@Repository
public interface InstructorRepository extends JpaRepository<Instructor, BigDecimal> {
    @Query(value = "SELECT i FROM instructor i INNER JOIN account a ON a.id = i.account.id WHERE a.email = :instructorEmail")
    public Optional<Instructor> findInstructorByEmail(@Param(value = "instructorEmail")String instructorEmail);
}
