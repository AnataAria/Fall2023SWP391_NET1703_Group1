package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.entity.Account;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
public class AccountServiceTesting {
    private final AccountService accountService;
    private Account firstAccount;
    @Autowired
    public AccountServiceTesting(AccountService accountService) {
        this.accountService  = accountService;
    }
    @BeforeEach
    public void setup(){
    }

}
