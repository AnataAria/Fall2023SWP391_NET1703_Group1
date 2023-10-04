package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.CustomerDto;
import com.group1.drawingcouseselling.service.CustomerService;
import com.group1.drawingcouseselling.service.JwtService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class CustomerController {
    private final JwtService jwtService;
    private final CustomerService customerService;
    @GetMapping("/customer")
    public ResponseEntity<?> getCustomerInfo(@RequestHeader(value = "Authorization", defaultValue = "") String token){
        String email = jwtService.extractUserEmail(token.substring(7));
        if(!email.isEmpty()){
            CustomerDto a = customerService.searchCustomerByEmailDto(email).orElse(null);
            if(a == null){
                return ResponseEntity.badRequest().build();
            }
            return ResponseEntity.ok(a);
        }
        return ResponseEntity.badRequest().build();
    }
}
