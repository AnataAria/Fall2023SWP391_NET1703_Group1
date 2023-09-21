package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.model.enums.ERole;
import com.group1.drawingcouseselling.service.AccountService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class AccountController {
    private final AccountService accountService ;
    @GetMapping("/account")
    public ResponseEntity<Account> getAccount(@RequestParam("email") String email){
        return new ResponseEntity<>(accountService.searchAccountByMail(email).get(), HttpStatus.OK);
    }
}
