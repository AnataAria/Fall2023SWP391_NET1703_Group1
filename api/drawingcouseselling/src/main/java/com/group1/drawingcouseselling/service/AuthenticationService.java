package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.dto.AccountDto;
import com.group1.drawingcouseselling.model.dto.AuthenticationRequest;
import com.group1.drawingcouseselling.model.dto.AuthenticationResponse;
import com.group1.drawingcouseselling.model.dto.RegisterRequest;
import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.model.entity.Customer;
import com.group1.drawingcouseselling.model.entity.Token;
import com.group1.drawingcouseselling.model.enums.ERole;
import com.group1.drawingcouseselling.model.enums.TokenType;
import com.group1.drawingcouseselling.repository.TokenRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthenticationService {
    private final AccountService accountService;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final AuthenticationManager authenticationManager;
    private final CustomerService customerService;
    private final TokenRepository tokenRepository;
    private final TokenService tokenService;
    public AuthenticationResponse register(RegisterRequest request){
        AccountDto account = AccountDto.builder()
                .email(request.email())
                .password(passwordEncoder.encode(request.password()))
                .isActive(true)
                .role(ERole.CUSTOMER)
                .build();
        Account a = accountService.registerAccount(account);
        Customer customer = new Customer();
        customer.setFullName(request.fullname());
        customer.setBirthDate(request.birthDate());
        customer.setGender(request.gender());
        customer.setPath("");
        customer.setAccount(a);
        try{
            customerService.addCustomer(customer);
        }catch (Exception e){
            throw new RuntimeException(e);
        }

        var jwtToken = jwtService.generateToken(a);
        tokenService.revokeAllUserTokens(a);
        tokenService.saveUserToken(a, jwtToken);
        return AuthenticationResponse.builder()
                .token(jwtToken)
                .build();
    }

    public AuthenticationResponse authenticate(AuthenticationRequest request){
        try{
            authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(
                            request.getEmail(),
                            request.getPassword()
                    )
            );
        }catch (AuthenticationException e){
            throw new UserNotFoundException("User not found");
        }

        var user = accountService.searchAccountByMail(request.getEmail()).orElseThrow(() -> new UserNotFoundException("User not found"));
        var jwtToken = jwtService.generateToken(user);
        tokenService.saveUserToken(user, jwtToken);
        return AuthenticationResponse.builder()
                .token(jwtToken)
                .build();
    }

    public String changePassword(AuthenticationRequest changePasswordRequest){
        final String SUCCESS = "CHANGE PASSWORD FOR EMAIL " + changePasswordRequest.getEmail() + " SUCCESS";
        final String FAIL = "CHANGE PASSWORD FOR EMAIL " + changePasswordRequest.getEmail() + " FAILED";
        var account  = accountService.changgePasswordAccount(changePasswordRequest.getEmail(), passwordEncoder.encode(changePasswordRequest.getPassword()));
        if(account != null) return SUCCESS;
        return FAIL;
    }
}
