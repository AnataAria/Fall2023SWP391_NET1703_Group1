package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.InstructorFinanceDto;
import com.group1.drawingcouseselling.repository.SalaryRepository;
import com.group1.drawingcouseselling.service.JwtService;
import com.group1.drawingcouseselling.service.SalaryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

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

    @GetMapping("/salarys/exports")
    public ResponseEntity<byte[]> getMonthPaymentCsv(@RequestParam Integer year,@RequestParam Integer month, @RequestHeader(value = "Authorization") String instructor){
        HttpHeaders headers = new HttpHeaders();
        String email = jwtService.extractUserEmail(instructor.substring(7));
        headers.setContentType(MediaType.parseMediaType("text/csv"));
        headers.setContentDisposition(ContentDisposition.builder("attachment").filename("salary_instructor.csv").build());
        var data =  salaryService.getSalaryExcelOfMonths(month,year,email);
        return ResponseEntity.ok()
                .headers(headers)
                .body(data);
    }
}
