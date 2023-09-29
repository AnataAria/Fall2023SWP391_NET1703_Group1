package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Token;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;
@Repository
public interface TokenRepository extends JpaRepository<Token, BigDecimal> {
    @Query(value = "SELECT t FROM token t " +
            "INNER JOIN account a ON a.id = t.account.id WHERE a.email = :userEmail " +
            "AND (t.expired = false or t.revoked = false)")
    public List<Token> findAllValidTokenByUserEmail(@Param("userEmail") String userEmail);
    @Query("SELECT t FROM token t WHERE t.token = :token")
    public Optional<Token> searchByToken(@Param("token") String token);
}
