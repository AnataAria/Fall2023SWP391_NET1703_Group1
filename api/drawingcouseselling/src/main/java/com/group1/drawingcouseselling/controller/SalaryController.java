package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.InstructorFinanceDto;
import com.group1.drawingcouseselling.repository.SalaryRepository;
import com.group1.drawingcouseselling.service.JwtService;
import com.group1.drawingcouseselling.service.SalaryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class SalaryController {
    private final SalaryService salaryService;
    private final JwtService jwtService;
    @GetMapping(value = "/salary")
    public ResponseEntity<InstructorFinanceDto> getInstructorFinance(@RequestHeader(value = "Authorization") String instructor){
        String email = jwtService.extractUserEmail(instructor.substring(7));
        return ResponseEntity.ok(salaryService.getInstructorFinance(email));
    }
}
