package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.AuthenticationRequest;
import com.group1.drawingcouseselling.model.dto.RegisterRequest;
import com.group1.drawingcouseselling.service.AuthenticationService;
import jakarta.servlet.http.Cookie;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequiredArgsConstructor
@RequestMapping("/auth")
public class AuthenticationController {
    private final AuthenticationService authenticationService;
    @PostMapping("/register")
    public ResponseEntity<Cookie> register (@RequestBody RegisterRequest request){
        Cookie cookie = new Cookie("USER",authenticationService.register(request).getToken());
        cookie.setMaxAge(24*64*64);
        cookie.setDomain("localhost:9090");
        return ResponseEntity.ok(cookie);
    }

    @PostMapping("/authentication")
    public ResponseEntity<Cookie> authentication (@RequestBody AuthenticationRequest request){
        Cookie cookie = new Cookie("USER",authenticationService.authenticate(request).getToken());
        cookie.setMaxAge(24*60*60);
        cookie.setDomain("localhost:9090");
        return ResponseEntity.ok(cookie);
    }

}
