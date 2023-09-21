package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.AccountDto;
import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.model.enums.ERole;
import com.group1.drawingcouseselling.service.AccountService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class AccountController {
    private final AccountService accountService ;
    @GetMapping("/account")
    public ResponseEntity<List<AccountDto>> getAccount(@RequestParam(value = "email", required = false) String email){
        return new ResponseEntity<>(accountService.searchAccountsByRoles(ERole.CUSTOMER, 1), HttpStatus.OK);
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
