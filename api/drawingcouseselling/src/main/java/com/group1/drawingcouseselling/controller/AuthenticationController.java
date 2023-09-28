package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.AuthenticationRequest;
import com.group1.drawingcouseselling.model.dto.RegisterRequest;
import com.group1.drawingcouseselling.service.AuthenticationService;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequiredArgsConstructor
@RequestMapping("/auth")
public class AuthenticationController {
    private final AuthenticationService authenticationService;

    @PostMapping("/register")
    public ResponseEntity<Cookie> register(@RequestBody RegisterRequest request, HttpServletResponse response) {
        Cookie cookie = new Cookie("USER", authenticationService.register(request).getToken());
        cookie.setMaxAge(24 * 64 * 64);
        cookie.setPath("/");
        response.addCookie(cookie);
        return ResponseEntity.ok(cookie);
    }

    @PostMapping("/authentication")
    public ResponseEntity<Cookie> authentication(@RequestBody AuthenticationRequest request, HttpServletResponse response) {
        Cookie cookie = new Cookie("USER", authenticationService.authenticate(request).getToken());
        cookie.setMaxAge(24 * 60 * 60);
        cookie.setPath("/");
        response.addCookie(cookie);
        return ResponseEntity.ok(cookie);
    }

    @PutMapping("/changePassword")
    public ResponseEntity<String> changePassword(@RequestBody AuthenticationRequest changePasswordRequest){
        return ResponseEntity.ok(authenticationService.changePassword(changePasswordRequest));
    }

}
