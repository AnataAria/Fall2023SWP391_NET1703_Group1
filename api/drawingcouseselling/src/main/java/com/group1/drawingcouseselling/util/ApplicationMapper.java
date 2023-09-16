package com.group1.drawingcouseselling.util;

import com.group1.drawingcouseselling.model.dto.CustomerDto;
import com.group1.drawingcouseselling.model.entity.Customer;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@NoArgsConstructor
public class ApplicationMapper {
    public CustomerDto customerToCustomerDto(Customer customer){
        var customerDto = new CustomerDto();
        customerDto.setCustomerId(customer.getId());
        customerDto.setFullName(customer.getFullName());
        return customerDto;
    }
}
