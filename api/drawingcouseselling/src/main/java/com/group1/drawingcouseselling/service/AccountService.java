package com.group1.drawingcouseselling.service;


import com.group1.drawingcouseselling.model.dto.AccountDto;
import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.model.enums.ERole;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

public interface AccountService {
    public Optional<AccountDto> searchAccountByID(BigDecimal id);
    public Optional<AccountDto> searchAccountByEmail(String email);

    public Optional<Account> searchAccountByMail(String email);

    public Account registerAccount(AccountDto account);
    public AccountDto registerAccountV2(AccountDto account);

    public List<AccountDto> searchAccountsByRoles(ERole role, Integer page);

    public Account checkAccountByEmail(String email);

    public Account changePasswordAccount(String email, String password);
}
