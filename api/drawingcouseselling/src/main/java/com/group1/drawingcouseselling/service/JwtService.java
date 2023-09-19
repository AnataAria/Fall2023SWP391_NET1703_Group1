package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.AccountDto;
import com.group1.drawingcouseselling.model.entity.Account;
import io.jsonwebtoken.Claims;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.function.Function;

public interface JwtService {
    public String extractUserEmail(String token);
    public <T> T extractClaims(String token, Function<Claims, T> claimFunction);
    public Boolean isTokenValid(String token, UserDetails accountDetails);
    public String generateToken(UserDetails accountDetails);
}
