package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.repository.AccountRepository;
import com.group1.drawingcouseselling.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Optional;
@Service
public class AccountServiceImpl implements AccountService {

    private final AccountRepository accountRepository;

    @Autowired
    public AccountServiceImpl(AccountRepository accountRepository) {
        this.accountRepository = accountRepository;
    }
    @Override
    public Optional<Account> searchAccountByID(BigDecimal id) {
        return accountRepository.findById(id);
    }

    @Override
    public Optional<Account> searchAccountByEmail(String email) {
        return Optional.empty();
    }
}
