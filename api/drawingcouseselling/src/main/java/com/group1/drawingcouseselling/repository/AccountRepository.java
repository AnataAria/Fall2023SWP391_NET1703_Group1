package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.model.enums.ERole;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Optional;

@Repository
public interface AccountRepository extends JpaRepository<Account, BigDecimal> {
    @Query("SELECT u FROM account u WHERE u.email LIKE %:email%")
    public Optional<Account> findAccountByEmail(@Param("email") String email);
    @Query("SELECT u FROM account u WHERE u.status = :status")
    public Collection<Account> findAccountsByStatus(@Param("status") String status);
    @Query(value = "SELECT u FROM account u WHERE u.role = :role",
    countQuery = "SELECT count(*) FROM account u WHERE u.role = :role"
    )
    public Page<Account> findAccountByRoles(@Param("role") ERole role, Pageable pageable);
}
