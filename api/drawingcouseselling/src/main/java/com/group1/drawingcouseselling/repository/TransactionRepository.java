package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.Collection;
@Repository
public interface TransactionRepository extends JpaRepository<Transaction, BigDecimal> {
    @Query("select a from transaction a where a.customer.id = :customerID")
    public Collection<Transaction> searchTransactionsCustomerID(@Param("customerID") BigDecimal customerID);
    @Query(value = "INSERT INTO transaction a (id)", nativeQuery = true)
    @Transactional
    @Modifying(clearAutomatically = true)
    public void makeTransactionUsingCustomerEmail(String customerEmail);

    @Query("SELECT COALESCE(SUM(t.totalAmount), 0) FROM transaction t " +
            "WHERE FUNCTION('MONTH', t.transactionDate) = :month AND FUNCTION('YEAR', t.transactionDate) = :year")
    BigDecimal getSumByMonthAndYear(@Param("month") int month, @Param("year") int year);
}
