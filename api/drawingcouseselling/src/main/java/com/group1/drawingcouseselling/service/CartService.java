package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.CartDto;
import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.model.entity.Course;

import java.math.BigDecimal;
import java.util.List;

public interface CartService {
    public CartDto getAllCartOnPaging(Integer page, Integer maxPage, String email);
    public CartDto addCart(String email, Integer courseID);
    public void removeCart(String email, Integer courseID);
    public BigDecimal calculateBaseTotalCart(String email);
    public List<Course> getAllCartForPayment(String email);
    public void refreshCart(String email);
    public CourseDto removeCartItem(String email, BigDecimal id);
}
