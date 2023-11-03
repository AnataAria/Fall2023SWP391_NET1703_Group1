package com.group1.drawingcouseselling.repository;

import com.group1.drawingcouseselling.model.entity.Centificate;
import com.group1.drawingcouseselling.model.entity.CertificationKey;
import com.group1.drawingcouseselling.model.enums.ECertificateFileStatus;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.Collection;

@Repository
public interface CertificationRepository extends JpaRepository<Centificate, CertificationKey> {
    public Collection<Centificate> findByIdCustomer_CustomerId(BigDecimal customerId);
    @Query(value = "SELECT c FROM certification c WHERE c.certificateFileStatus = :firstCondition " +
            "OR c.certificateFileStatus = :secondCondition")
    public Collection<Centificate> getCertificateByCertificateFileStatus(@Param(value = "firstCondition") ECertificateFileStatus firstCondition,
                                                                         @Param(value = "secondCondition") ECertificateFileStatus secondCondition);

}
