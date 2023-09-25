package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.CustomerDto;
import com.group1.drawingcouseselling.model.entity.Customer;

import java.util.Optional;

public interface CustomerService {
    public Optional<Customer> searchCustomerByID(Long customerID);
    public Optional<CustomerDto> addCustomer(CustomerDto customer);

    public Optional<Customer> addCustomer(Customer customer);
}
