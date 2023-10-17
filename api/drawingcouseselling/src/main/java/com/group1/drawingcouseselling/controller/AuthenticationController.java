package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.*;
import com.group1.drawingcouseselling.service.AuthenticationService;
import com.group1.drawingcouseselling.service.OTPService;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;


@RestController
@RequiredArgsConstructor
@RequestMapping("/auth")
public class AuthenticationController {
    private final AuthenticationService authenticationService;
    @Autowired
    public OTPService otpService;

    @PostMapping("/register")
    public ResponseEntity<Cookie> register(@RequestBody RegisterRequest request, HttpServletResponse response) {
        Cookie cookie = new Cookie("USER", authenticationService.register(request).getToken());
        cookie.setMaxAge(24 * 64 * 64);
        cookie.setPath("/");
        response.addCookie(cookie);
        return ResponseEntity.ok(cookie);
    }

    @PostMapping("/instructor/register")
    public ResponseEntity<?> registerInstructor(@RequestBody InstructorRegisterDto instructorDto, HttpServletResponse response) {
        Cookie cookie = new Cookie("USER", authenticationService.registerInstructor(instructorDto).getToken());
        cookie.setMaxAge(24 * 64 * 64);
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
    public ResponseEntity<String> changePassword(@RequestBody ChangePasswordDto changePasswordRequest) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String username = auth.getName();
        //Validate the Otp
        if (changePasswordRequest.getOtp() >= 0) {

            int serverOtp = otpService.getOtp(username);
            if (serverOtp > 0) {
                if (changePasswordRequest.getOtp() == serverOtp) {
                    otpService.clearOTP(username);

                    return ResponseEntity.ok(authenticationService.changePassword(changePasswordRequest));
                } else {
                    return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
                }
            } else {
                return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
            }
        } else {
            return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
        }
    }

}
