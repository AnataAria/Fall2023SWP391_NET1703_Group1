package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.model.entity.Token;
import com.group1.drawingcouseselling.model.enums.TokenType;
import com.group1.drawingcouseselling.repository.TokenRepository;
import com.group1.drawingcouseselling.service.TokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class TokenServiceImpl implements TokenService {
    private final TokenRepository tokenRepository;

    @Autowired
    public TokenServiceImpl(TokenRepository tokenRepository) {
        this.tokenRepository = tokenRepository;
    }
    @Override
    public void saveUserToken(Account a, String jwtToken) {
        var token = new Token();
        token.setAccount(a);
        token.setTokenType(TokenType.BEARER);
        token.setToken(jwtToken);
        token.setRevoked(false);
        token.setExpired(false);
        tokenRepository.save(token);
    }
    @Override
    public void revokeAllUserTokens(Account acc){
        var validToken = tokenRepository.findAllValidTokenByUserEmail(acc.getEmail());
        if(validToken.isEmpty())return;
        validToken.forEach(token -> {
            token.setExpired(true);
            token.setRevoked(true);
        });
        tokenRepository.saveAll(validToken);
    }

    @Override
    public Optional<Token> searchByToken(String token) {
        return tokenRepository.searchByToken(token);
    }
    @Override
    public void saveToken(Token token){
        tokenRepository.save(token);
    }
}
