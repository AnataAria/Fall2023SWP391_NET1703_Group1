package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.model.dto.AccountDto;
import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.repository.AccountRepository;
import com.group1.drawingcouseselling.service.AccountService;
import com.group1.drawingcouseselling.util.ApplicationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;
import java.util.Optional;

@Service
public class AccountServiceImpl implements AccountService {

    private final AccountRepository accountRepository;
    private final ApplicationMapper mapper;

    @Autowired
    public AccountServiceImpl(AccountRepository accountRepository, ApplicationMapper mapper) {
        this.accountRepository = accountRepository;
        this.mapper = mapper;
    }
    @Override
    public Optional<AccountDto> searchAccountByID(BigDecimal id) {
        return Optional.of(accountRepository.findById(id).map(mapper::accountToAccountDto).get());
    }

    @Override
    public Optional<AccountDto> searchAccountByEmail(String email) {
        return accountRepository.findAccountByEmail(email).map(mapper::accountToAccountDto);
    }

    @Override
    public Optional<Account> searchAccountByMail(String email) {
        return Optional.of(accountRepository.findAccountByEmail(email).get());
    }

    @Override
    public Account registerAccount(AccountDto account) {
        Account acc = new Account();
        acc.setEmail(account.getEmail());
        acc.setEncodePassword(account.getPassword());
        acc.setRole(account.getRole());
        acc.setActive(account.getIsActive());
        acc.setCreateDate(Date.valueOf(LocalDate.now()));
        acc.setStatus(true);
        return accountRepository.save(acc);
    }
}
