package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.AccountDto;
import com.group1.drawingcouseselling.model.enums.ERole;
import com.group1.drawingcouseselling.service.AccountService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class AccountController {
    private final AccountService accountService ;
    @GetMapping("/account")
    public ResponseEntity<AccountDto> getAccountByEmail(@RequestParam(value = "email", required = false) String email, @RequestHeader(value = "Authorization", required = false) String authorization){
        return new ResponseEntity<>(accountService.searchAccountByEmail(email).get(), HttpStatus.OK);
    }

    @GetMapping("/accounts")
    public ResponseEntity<List<AccountDto>> getAllAccounts(){
        return new ResponseEntity<>(accountService.searchAccountsByRoles(ERole.CUSTOMER,1), HttpStatus.OK);
    }
    @PostMapping("/account")
    public ResponseEntity<AccountDto> registerAccount(@RequestBody AccountDto acc){
        return new ResponseEntity<>(accountService.registerAccountV2(acc), HttpStatus.OK);
    }
}
