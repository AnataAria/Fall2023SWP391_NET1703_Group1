package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, BigDecimal> {
    @Query("SELECT c FROM customer c INNER JOIN account a ON c.account.id = a.id WHERE a.email = :email")
    public Customer searchCustomerByAccountEmail(@Param(value = "email") String email);
}
