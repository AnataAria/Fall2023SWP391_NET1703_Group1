package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
@Repository
public interface CartRepository extends JpaRepository<Cart, BigDecimal> {
    @Query(value = "SELECT ca.cartCookie FROM cart ca " +
            "INNER JOIN customer c ON c.id = ca.customer.id " +
            "INNER JOIN account a ON a.id = c.account.id WHERE a.email = :accountEmail")
    public String searchCartByAccountEmail(@Param("accountEmail") String accountEmail);
    @Query(value = "UPDATE cart ca SET ca.cartCookie = :cartCookie WHERE ca.id IN (" +
            "SELECT c.id FROM customer c " +
            "INNER JOIN account a ON a.id = c.account.id " +
            "WHERE a.email = :accountEmail)")
    public void updateCart(@Param("accountEmail") String accountEmail, @Param("cartCookie") String cartCookie);
}
