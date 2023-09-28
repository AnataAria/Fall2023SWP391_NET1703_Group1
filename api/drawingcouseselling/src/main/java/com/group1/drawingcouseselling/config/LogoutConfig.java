package com.group1.drawingcouseselling.config;

import com.group1.drawingcouseselling.service.TokenService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.stereotype.Service;

@Service
public class LogoutConfig implements LogoutHandler {

    private final TokenService tokenService;
    public LogoutConfig (TokenService tokenService) {
        this.tokenService = tokenService;
    }
    @Override
    public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
        final String authHeader = request.getHeader("Authorization");
        final String jwtToken;
        final String userEmail;
        if(authHeader == null || !authHeader.startsWith("Bearer ")){
            return;
        }
        jwtToken = authHeader.substring(7);
        var storeToken = tokenService.searchByToken(jwtToken).orElse(null);
        if(storeToken != null){
            storeToken.setExpired(true);
            storeToken.setRevoked(true);
            tokenService.saveToken(storeToken);
        }
    }
}
