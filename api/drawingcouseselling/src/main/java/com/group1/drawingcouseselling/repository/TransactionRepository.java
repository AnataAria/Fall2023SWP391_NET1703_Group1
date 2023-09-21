package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigDecimal;
import java.util.Collection;

public interface TransactionRepository extends JpaRepository<Transaction, BigDecimal> {
    @Query("select a from transaction a where a.customer.id = :customerID")
    public Collection<Transaction> searchTransactionsCustomerID(@Param("customerID") BigDecimal customerID);
}
