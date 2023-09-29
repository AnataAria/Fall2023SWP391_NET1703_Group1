package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.EmailIsMatchedException;
import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.dto.AccountDto;
import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.model.enums.ERole;
import com.group1.drawingcouseselling.repository.AccountRepository;
import com.group1.drawingcouseselling.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class AccountServiceImpl implements AccountService {

    private final AccountRepository accountRepository;

    @Autowired
    public AccountServiceImpl(AccountRepository accountRepository) {
        this.accountRepository = accountRepository;
    }

    @Override
    public Optional<AccountDto> searchAccountByID(BigDecimal id) {
        return Optional.of(accountRepository.findById(id).map(account -> account.convertEntityToDto(account)).orElseThrow(() -> new UserNotFoundException("Could not find account with ID: " + id.toString())));
    }

    @Override
    public Optional<AccountDto> searchAccountByEmail(String email) {
        return Optional.of(new Account().convertEntityToDto(accountRepository.findAccountByEmail(email).orElseThrow(() -> new UserNotFoundException("Could not find account with email: " + email))));
    }

    @Override
    public Optional<Account> searchAccountByMail(String email) {
        return Optional.of(accountRepository.findAccountByEmail(email).orElseThrow(() -> new UserNotFoundException("Could not find account with email: " + email)));
    }

    @Override
    public List<AccountDto> searchAccountsByRoles(ERole userRole, Integer page) {
        Page<Account> pages = accountRepository.findAccountByRoles(userRole, PageRequest.of(page - 1, 10));
        return pages.stream().map(account -> new Account().convertEntityToDto(account)).toList();
    }

    @Override
    public Account registerAccount(AccountDto account) {
        Account acc = new Account().covertDtoToEntity(account);
        acc.setStatus(true);
        acc.setCreateDate(Date.valueOf(LocalDate.now()));
        try{
            return accountRepository.save(acc);
        }catch(Exception e){
            throw new EmailIsMatchedException("Account already exists");
        }
    }

    @Override
    public AccountDto registerAccountV2(AccountDto account) {
        Account acc = new Account();
        acc = acc.covertDtoToEntity(account);
        try {
            accountRepository.save(acc);
        } catch (Exception e) {
            throw new EmailIsMatchedException("Account already exists");
        }
        return account;
    }

    @Override
    public Account checkAccountByEmail(String email) {
        Account account;
        account = accountRepository.checkAccountByEmail(email);
        if(account == null) throw new UserNotFoundException("Could not find account with email:" + email);

//        try {
//            account = accountRepository.checkAccountByEmail(email);
//            if (account.getEmail().isEmpty()){
//                throw new UserNotFoundException("Could not find account with email: " + email);
//            }
//        }catch (Exception e){
//            throw new UserNotFoundException("Could not find account with email: " + email);
//        }
        return account;
    }

    public Account changePasswordAccount(String email, String password){
        var account = accountRepository.checkAccountByEmail(email);
        if(account == null) throw new UserNotFoundException("Could not find account with email:" + email);
        account.setEncodePassword(password);
        accountRepository.save(account);
        return account;
    }
}
