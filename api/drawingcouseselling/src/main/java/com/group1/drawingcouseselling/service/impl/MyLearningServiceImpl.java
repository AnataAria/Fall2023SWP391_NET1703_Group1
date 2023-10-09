package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.model.entity.Course;
import com.group1.drawingcouseselling.model.entity.Customer;
import com.group1.drawingcouseselling.repository.CustomerRepository;
import com.group1.drawingcouseselling.service.CartService;
import com.group1.drawingcouseselling.service.MyLearningService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MyLearningServiceImpl implements MyLearningService {

    private final CartService cartService;
    private final CustomerRepository customerRepository;
    @Override
    public void orderCourse(String email) {
        Customer customer = customerRepository.searchCustomerByAccountEmail(email);
        if (customer != null) {
            List<Course> cartCourseList = cartService.getAllCartForPayment(email);
            if(cartCourseList != null){
                customer.getCourseList().addAll(cartCourseList);
                customerRepository.save(customer);
                cartService.refreshCart(email);
            }
        }
    }

    public List<CourseDto> getLearningCourseList(String email){
        Customer customer = customerRepository.searchCustomerByAccountEmail(email);
        if(customer != null){
            return customer.getCourseList().stream().map(c -> new Course().convertEntityToDto(c)).collect(Collectors.toList());
        }
        return List.of();
    }
}
