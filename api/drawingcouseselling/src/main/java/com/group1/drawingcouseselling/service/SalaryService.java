package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.InstructorFinanceDto;
import com.group1.drawingcouseselling.model.entity.Instructor;

import java.math.BigDecimal;

public interface SalaryService {
    public InstructorFinanceDto getInstructorFinance(String instructorEmail);
    public void updateSalary(String instructorEmail, BigDecimal income);
    public void updateSalary(Instructor instructorInfo, BigDecimal income);
    public byte[] getSalaryExcelOfMonths(Integer month, Integer year, String staffEmail);
}
