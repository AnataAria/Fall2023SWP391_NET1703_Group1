package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.AuthenticationRequest;
import com.group1.drawingcouseselling.model.dto.AuthenticationResponse;
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
    public ResponseEntity<AuthenticationResponse> register (@RequestBody RegisterRequest request){
        return ResponseEntity.ok(authenticationService.register(request));
    }

    @PostMapping("/authentication")
    public ResponseEntity<Cookie> authentication (@RequestBody AuthenticationRequest request){
        Cookie cookie = new Cookie("USER",authenticationService.authenticate(request).getToken());
        cookie.setMaxAge(1440);
        cookie.setDomain("localhost:9090");
        return ResponseEntity.ok(cookie);
    }

}
