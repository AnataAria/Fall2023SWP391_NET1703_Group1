package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.AccountDto;
import com.group1.drawingcouseselling.model.dto.AuthenticationRequest;
import com.group1.drawingcouseselling.model.dto.AuthenticationResponse;
import com.group1.drawingcouseselling.model.dto.RegisterRequest;
import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.model.enums.ERole;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthenticationService {
    private final AccountService accountService;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final AuthenticationManager authenticationManager;
    public AuthenticationResponse register(RegisterRequest request){
        AccountDto account = AccountDto.builder()
                .email(request.getEmail())
                .password(passwordEncoder.encode(request.getPassword()))
                .isActive(true)
                .role(ERole.CUSTOMER)
                .build();
        Account a = accountService.registerAccount(account);
        var jwtToken = jwtService.generateToken(a);
        return AuthenticationResponse.builder()
                .token(jwtToken)
                .build();
    }

    public AuthenticationResponse authenticate(AuthenticationRequest request){
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        request.getEmail(),
                        request.getPassword()
                )
        );
        var user = accountService.searchAccountByMail(request.getEmail()).get();
        var jwtToken = jwtService.generateToken(user);
        return AuthenticationResponse.builder()
                .token(jwtToken)
                .build();
    }
}
