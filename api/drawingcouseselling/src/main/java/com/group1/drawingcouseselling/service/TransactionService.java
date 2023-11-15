package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.RevenueStatisticDto;

import java.math.BigDecimal;

public interface TransactionService {
    public void makeTransaction(String customerEmail, BigDecimal totalAmount, String description);
    public RevenueStatisticDto getYearsRevenueStatistic(Integer year);
}
