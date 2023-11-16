package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.dto.RevenueStatisticDto;
import com.group1.drawingcouseselling.model.entity.Transaction;
import com.group1.drawingcouseselling.repository.TransactionRepository;
import com.group1.drawingcouseselling.service.CustomerService;
import com.group1.drawingcouseselling.service.TransactionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class TransactionServiceImpl implements TransactionService {
    private final TransactionRepository transactionRepository;
    private final CustomerService customerService;
    @Override
    public void makeTransaction(String customerEmail, BigDecimal totalAmount, String description){
        var customerInfo = customerService.searchCustomerByEmail(customerEmail).orElseThrow(() -> new UserNotFoundException("Not found this customer"));
        var trans = new Transaction();
        trans.setCustomer(customerInfo);
        trans.setTotalAmount(totalAmount);
        trans.setDescription(description);
        trans.setPaymentMethod("PayPal");
        transactionRepository.save(trans);
    }
    @Override
    public RevenueStatisticDto getYearsRevenueStatistic(Integer year){
        List<BigDecimal> monthlySums = new ArrayList<>();

        for (int month = 1; month <= 12; month++) {
            BigDecimal sumForMonth = transactionRepository.getSumByMonthAndYear(month, year);
            monthlySums.add(sumForMonth);
        }

        return RevenueStatisticDto.builder()
                .firstMonth(monthlySums.get(0))
                .secondMonth(monthlySums.get(1))
                .thirdMonth(monthlySums.get(2))
                .fourthMonth(monthlySums.get(3))
                .fifthMonth(monthlySums.get(4))
                .sixthMonth(monthlySums.get(5))
                .seventhMonth(monthlySums.get(6))
                .eighthMonth(monthlySums.get(7))
                .ninthMonth(monthlySums.get(8))
                .tenthMonth(monthlySums.get(9))
                .eleventhMonth(monthlySums.get(10))
                .twelfthMonth(monthlySums.get(11))
                .build();
    }
}
