package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.CourseMissMatchException;
import com.group1.drawingcouseselling.repository.CartRepository;
import com.group1.drawingcouseselling.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.stream.Collectors;

@Service
public class CartServiceImpl implements CartService {
    private final CartRepository cartRepository;

    @Autowired
    public CartServiceImpl(CartRepository cartRepository) {
        this.cartRepository = cartRepository;
    }

    public void addCart(String email, Integer courseID){
        String cartCookie = cartRepository.searchCartByAccountEmail(email);
        if(cartCookie != null) {
            Collection<BigDecimal> cartList = Arrays.stream(cartCookie.split(",")).map(a -> BigDecimal.valueOf(Long.parseLong(a))).collect(Collectors.toSet());
            if(!cartList.add(BigDecimal.valueOf(courseID))) throw new CourseMissMatchException("");
            cartCookie = String.join(",", cartList.stream().map(BigDecimal::toString).toList());
            cartRepository.updateCart(email, cartCookie);
        }
    }

    public void removeCart(String email, Integer courseID){
        Collection<BigDecimal> cartList = convertStringToArray(email);
        if(cartList.isEmpty()) {
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
}
