package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.model.entity.Token;

import java.util.Optional;

public interface TokenService {
    public void saveUserToken(Account a, String jwtToken);
    public void revokeAllUserTokens(Account acc);

    public Optional<Token> searchByToken(String token);
    public void saveToken(Token token);
}
