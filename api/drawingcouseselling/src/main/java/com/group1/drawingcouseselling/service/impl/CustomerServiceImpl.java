package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.ValueIsInvalidException;
import com.group1.drawingcouseselling.model.dto.CustomerDto;
import com.group1.drawingcouseselling.model.entity.Customer;
import com.group1.drawingcouseselling.repository.CustomerRepository;
import com.group1.drawingcouseselling.service.AccountService;
import com.group1.drawingcouseselling.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomerServiceImpl implements CustomerService {
    private final CustomerRepository customerRepository;
    private final AccountService accountService;

    @Autowired
    public CustomerServiceImpl(CustomerRepository customerRepository, AccountService accountService) {
        this.customerRepository = customerRepository;
        this.accountService = accountService;
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
        Customer result = null;
        try{
            result = customerRepository.save(customer);
        }catch(IllegalArgumentException | DataIntegrityViolationException e){
            throw new ValueIsInvalidException(e.getMessage());
        }
        return Optional.of(result);
    }

    @Override
    public Optional<Customer> searchCustomerByEmail(String customerEmail) {
        return Optional.of(customerRepository.searchCustomerByAccountEmail(customerEmail));
    }

    public Optional<CustomerDto> searchCustomerByEmailDto(String customerEmailDto) {
        Customer data = customerRepository.searchCustomerByAccountEmail(customerEmailDto);
        CustomerDto customerDto = null;
        if (data!= null) {
            customerDto = CustomerDto.builder()
                    .customerID(data.getId())
                    .fullName(data.getFullName())
                    .birthDate(data.getBirthDate())
                    .gender(data.getGender())
                    .email(customerEmailDto)
                    .joinDate(accountService.checkAccountByEmail(customerEmailDto).getCreateDate())
                    .build();
        }
        return Optional.of(customerDto);
    }
}
