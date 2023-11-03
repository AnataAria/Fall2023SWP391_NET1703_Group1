package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.CertificationDto;
import com.group1.drawingcouseselling.model.entity.Customer;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;
import java.util.List;

public interface CertificateService {
    public void createCertificate(String customerEmail, BigDecimal courseID);
    public void createCertificate(Customer customerInfo, BigDecimal courseID);
    public void createCertificate(BigDecimal customerID, BigDecimal courseID);
    public MultipartFile getCertificate(String customerEmail, BigDecimal courseID);
    public List<CertificationDto> getAllCertificatesListOfCustomer(String customerEmail);
    public byte[] getCertificateFileByCertificateID(BigDecimal courseID, BigDecimal customerID);
}
