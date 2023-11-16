package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.InstructorFinanceDto;

import java.math.BigDecimal;

public interface SalaryService {
    public InstructorFinanceDto getInstructorFinance(String instructorEmail);
    public void updateSalary(String instructorEmail, BigDecimal income);
}
