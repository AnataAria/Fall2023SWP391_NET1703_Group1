package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Staff;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Optional;

@Repository
public interface StaffRepository extends JpaRepository<Staff, BigDecimal> {
    @Query(value = "SELECT s FROM staff s INNER JOIN account a ON a.id = s.account.id WHERE a.email = :email")
    public Optional<Staff> getStaffByEmail(@Param(value = "email") String email);
}
