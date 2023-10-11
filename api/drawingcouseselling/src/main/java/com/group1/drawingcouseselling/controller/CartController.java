package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.CartDto;
import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.service.CartService;
import com.group1.drawingcouseselling.service.JwtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

@RestController
public class CartController {
    private final CartService cartService;
    private final JwtService jwtService;
    @Autowired
    public CartController(CartService cartService, JwtService jwtService) {
        this.cartService = cartService;
        this.jwtService = jwtService;
    }
    @GetMapping("/cart")
    public ResponseEntity<CartDto> addCart(@RequestParam(required = true) Integer courseID, @RequestHeader(value = "Authorization", defaultValue = "") String token){
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(cartService.addCart(email, courseID));
    }
    @GetMapping("/carts")
    public ResponseEntity<CartDto> getCarts(@RequestHeader(value = "Authorization", defaultValue = "") String token,
                                            @RequestParam(value = "page", defaultValue = "1") Integer page,
                                            @RequestParam(value = "maxPage", defaultValue = "5") Integer maxSize
                                            ){
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(cartService.getAllCartOnPaging(page,maxSize,email));
    }
    @GetMapping("/carts/total")
    public ResponseEntity<BigDecimal> getCartTotal(@RequestHeader(value = "Authorization", defaultValue = "") String token) {
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(cartService.calculateBaseTotalCart(email));
    }

    @DeleteMapping("/cart")
    public ResponseEntity<CourseDto> removeCartItem(@RequestHeader(value = "Authorization", defaultValue = "") String token, @Validated @RequestParam(value = "courseID") BigDecimal courseID){
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(cartService.removeCartItem(email, courseID));
    }
}
