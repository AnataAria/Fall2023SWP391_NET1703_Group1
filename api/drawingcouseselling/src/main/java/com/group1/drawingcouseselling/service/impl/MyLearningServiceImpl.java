package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.model.entity.Course;
import com.group1.drawingcouseselling.model.entity.Customer;
import com.group1.drawingcouseselling.repository.CustomerRepository;
import com.group1.drawingcouseselling.service.CartService;
import com.group1.drawingcouseselling.service.MyLearningService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
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
        if(customer == null) throw new UserNotFoundException("This customer does not exist in system");

        if(customer != null){
            return customer.getCourseList().stream().map(c -> new Course().convertEntityToDto(c)).toList();
        }
        return List.of();
    }

    @Override
    public boolean hasCourse(String email, BigDecimal courseID) {
        Map<BigDecimal,Course> userCourse = customerRepository.
                searchCustomerByAccountEmail(email).getCourseList()
                .stream().parallel().collect(Collectors.toMap(Course::getId, Function.identity()));
        return userCourse.isEmpty() || userCourse.containsKey(courseID);
    }
    @Override
    public Boolean checkSomeoneLearningCourse(BigDecimal courseID){
        var count = customerRepository.countAllCustomerHasLearnedCourseUsingCourseID(courseID);
        return !count.equals(BigDecimal.ZERO);
    }
}
