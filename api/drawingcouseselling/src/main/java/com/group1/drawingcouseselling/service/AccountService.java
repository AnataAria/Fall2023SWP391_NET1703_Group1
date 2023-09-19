package com.group1.drawingcouseselling.service;


import com.group1.drawingcouseselling.model.dto.AccountDto;
import com.group1.drawingcouseselling.model.entity.Account;

import java.math.BigDecimal;
import java.util.Optional;

public interface AccountService {
    public Optional<AccountDto> searchAccountByID(BigDecimal id);
    public Optional<AccountDto> searchAccountByEmail(String email);

    public Optional<Account> searchAccountByMail(String email);

    public Account registerAccount(AccountDto account);
}
