package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.entity.Customer;

import java.util.Optional;

public interface CustomerService {
    public Optional<Customer> searchCustomerByID(Long customerID);
}
