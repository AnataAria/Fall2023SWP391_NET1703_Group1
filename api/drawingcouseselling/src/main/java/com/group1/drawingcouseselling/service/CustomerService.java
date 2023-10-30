package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.CustomerDto;
import com.group1.drawingcouseselling.model.entity.Customer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigDecimal;
import java.util.Optional;

public interface CustomerService {
    public Optional<Customer> searchCustomerByID(BigDecimal customerID);
    public Optional<CustomerDto> addCustomer(CustomerDto customer);

    public Optional<Customer> addCustomer(Customer customer);
    public Optional<Customer> searchCustomerByEmail(String customerEmail);
    public Optional<CustomerDto> searchCustomerByEmailDto(String customerEmailDto);
}
