package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.RevenueStatisticDto;
import com.group1.drawingcouseselling.service.TransactionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class TransactionController {
    private final TransactionService transactionService;
    @GetMapping("/transaction/revenue")
    public ResponseEntity<RevenueStatisticDto> getRevenueOfMonth(Integer year){
        return ResponseEntity.ok(transactionService.getYearsRevenueStatistic(year));
    }
}
