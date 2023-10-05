package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.AccountDto;
import com.group1.drawingcouseselling.model.enums.ERole;
import com.group1.drawingcouseselling.service.AccountService;
import com.group1.drawingcouseselling.service.JwtService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class AccountController {
    private final AccountService accountService ;
    private final JwtService jwtService ;
    @GetMapping("/account")
    public ResponseEntity<AccountDto> searchAccount(@RequestParam(value = "email", required = false) String email, @RequestHeader(value = "Authorization", required = false) String authorization){
        if(email != null){
            return new ResponseEntity<>(accountService.searchAccountByEmail(email).get(), HttpStatus.OK);
        }
        if(authorization != null){
            String emailIn = jwtService.extractUserEmail(authorization.substring(7));
            return new ResponseEntity<>(accountService.searchAccountByEmail(emailIn).get(), HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
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
