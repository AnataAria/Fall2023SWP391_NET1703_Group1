package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.CourseMissMatchException;
import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.dto.CartDto;
import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.model.entity.Cart;
import com.group1.drawingcouseselling.model.entity.Course;
import com.group1.drawingcouseselling.model.entity.Customer;
import com.group1.drawingcouseselling.repository.CartRepository;
import com.group1.drawingcouseselling.repository.CourseRepository;
import com.group1.drawingcouseselling.service.CartService;
import com.group1.drawingcouseselling.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Transactional
public class CartServiceImpl implements CartService {
    private final CartRepository cartRepository;
    private final CourseRepository courseRepository;
    private final CustomerService customerService;

    @Autowired
    public CartServiceImpl(CartRepository cartRepository, CourseRepository courseRepository, CustomerService customerService) {
        this.cartRepository = cartRepository;
        this.courseRepository = courseRepository;
        this.customerService = customerService;
    }
    @Override
    public CartDto addCart(String email, Integer courseID){
        String cartCookie = cartRepository.searchCartByAccountEmail(email);
        if(cartCookie != null) {
            Collection<BigDecimal> cartList = Arrays.stream(cartCookie.split(",")).map(a -> BigDecimal.valueOf(Long.parseLong(a))).collect(Collectors.toSet());
            if(!cartList.add(BigDecimal.valueOf(courseID))) throw new CourseMissMatchException("This course with ID:"+ courseID +" has already been added");
            cartCookie = String.join(",", cartList.stream().map(BigDecimal::toString).toList());
            cartRepository.updateCart(email, cartCookie);
        }else{
            Cart temp = new Cart();
            Optional<Customer> customer = customerService.searchCustomerByEmail(email);
            if(customer.isEmpty()) throw new UserNotFoundException("User with email " + email + " is not founded");
            temp.setCustomer(customer.get());
            temp.setCartCookie(courseID.toString());
            cartRepository.save(temp);
        }
        return getAllCartOnPaging(1, 5,email);
    }
    @Override
    public void removeCart(String email, Integer courseID){
        Collection<BigDecimal> cartList = convertStringToArray(email);
        if(!cartList.isEmpty()) {
            if(!cartList.add(BigDecimal.valueOf(courseID))) throw new CourseMissMatchException("");
            String cartCookie = convertSetToString(cartList);
            cartRepository.updateCart(email, cartCookie);
        }
    }

    private Collection<BigDecimal> convertStringToArray(String email){
        String cartCookie = cartRepository.searchCartByAccountEmail(email);
        if (cartCookie != null) return Arrays.stream(cartCookie.split(",")).map(a -> BigDecimal.valueOf(Long.parseLong(a))).collect(Collectors.toSet());
        return Collections.emptySet();
    }

    private String convertSetToString(Collection<BigDecimal> list){
        return String.join(",", list.stream().map(BigDecimal::toString).toList());
    }

    @Override
    public CartDto getAllCartOnPaging(Integer page, Integer maxPage, String email) {
        Collection<BigDecimal> cartList = convertStringToArray(email);
        List<CourseDto> courseList = null;
        BigDecimal baseTotal = BigDecimal.ZERO;
        if(!cartList.isEmpty()){
            var course = courseRepository.searchCourseByIdList(cartList);
            baseTotal = calculateBaseTotalCart(course);
            courseList = course.stream().map(a -> new Course().convertEntityToDto(a)).toList();
            Pageable pageable = PageRequest.of(page-1, maxPage);
            int start = (int) pageable.getOffset();
            int end = Math.min((start + pageable.getPageSize()), courseList.size());
            courseList  = courseList.subList(start,end);
        }
        if(courseList == null) courseList = new ArrayList<>();
        return CartDto.builder()
                .courseList(courseList)
                .localTotal(baseTotal)
                .build();
    }
    @Override
    public BigDecimal calculateBaseTotalCart(String email){
        Collection<BigDecimal> cartList = convertStringToArray(email);
        BigDecimal baseTotal = BigDecimal.ZERO;
        if(!cartList.isEmpty()){
            var course = courseRepository.searchCourseByIdList(cartList);
            baseTotal = calculateBaseTotalCart(course);
        }
        return baseTotal;
    }

    private BigDecimal calculateBaseTotalCart(List<Course> courseList){
        BigDecimal totalPrice = BigDecimal.ZERO;
        if(courseList != null){
            for(Course c : courseList){
                totalPrice = totalPrice.add(c.getPrice());
            }
        }
        return totalPrice;
    }
}
