package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.model.dto.CustomerDto;
import com.group1.drawingcouseselling.model.entity.Customer;
import com.group1.drawingcouseselling.repository.CustomerRepository;
import com.group1.drawingcouseselling.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomerServiceImpl implements CustomerService {
    private final CustomerRepository customerRepository;

    @Autowired
    public CustomerServiceImpl(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }
    @Override
    public Optional<Customer> searchCustomerByID(Long customerID) {
        return Optional.empty();
    }

    @Override
    public Optional<CustomerDto> addCustomer(CustomerDto customer) {
        Customer customerEntity = new Customer();
        return Optional.empty();
    }

    @Override
    public Optional<Customer> addCustomer(Customer customer) {
        return Optional.of(customerRepository.save(customer));
    }

    @Override
    public Optional<Customer> searchCustomerByEmail(String customerEmail) {
        return Optional.of(customerRepository.searchCustomerByAccountEmail(customerEmail));
    }
}
