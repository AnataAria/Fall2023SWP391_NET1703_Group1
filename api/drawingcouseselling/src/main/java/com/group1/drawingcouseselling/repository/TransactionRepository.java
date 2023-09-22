package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Collection;
@Repository
public interface TransactionRepository extends JpaRepository<Transaction, BigDecimal> {
    @Query("select a from transaction a where a.customer.id = :customerID")
    public Collection<Transaction> searchTransactionsCustomerID(@Param("customerID") BigDecimal customerID);
}
