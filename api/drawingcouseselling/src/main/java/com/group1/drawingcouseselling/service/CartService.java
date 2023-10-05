package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.CartDto;

import java.math.BigDecimal;

public interface CartService {
    public CartDto getAllCartOnPaging(Integer page, Integer maxPage, String email);
    public CartDto addCart(String email, Integer courseID);
    public void removeCart(String email, Integer courseID);
    public BigDecimal calculateBaseTotalCart(String email);
}
