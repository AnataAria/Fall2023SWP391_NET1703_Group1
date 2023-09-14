package com.group1.drawingcouseselling.service;


import com.group1.drawingcouseselling.model.entity.Account;

import java.math.BigDecimal;
import java.util.Optional;

public interface AccountService {
    public Optional<Account> searchAccountByID(BigDecimal id);
    public Optional<Account> searchAccountByEmail(String email);
}
