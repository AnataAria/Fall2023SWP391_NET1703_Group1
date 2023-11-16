package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.EntityNotFoundException;
import com.group1.drawingcouseselling.exception.SomethingWentWrongExceptions;
import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.model.dto.InstructorFinanceDto;
import com.group1.drawingcouseselling.model.entity.Instructor;
import com.group1.drawingcouseselling.model.entity.Salary;
import com.group1.drawingcouseselling.repository.SalaryRepository;
import com.group1.drawingcouseselling.service.*;
import lombok.RequiredArgsConstructor;
import lombok.Value;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;

@Service
@RequiredArgsConstructor
public class SalaryServiceImpl implements SalaryService {
    private final SalaryRepository salaryRepository;
    private final InstructorService instructorService;
    private final CourseService courseService;
    private final MyLearningService myLearningService;
    private final StaffService staffService;
    private final BigDecimal PROFIT_PERCENTAGE = new BigDecimal("0.9");
    @Scheduled(cron = "0 0 1 * * *")
    @Transactional
    public void createMonthlySalaryForAllInstructor(){
        System.out.println(LocalDate.now().getDayOfMonth());
        if(LocalDate.now().getDayOfMonth() == 16){
            var instructorPage = instructorService.getInstructorOnPaging(0, 20);
            do{
                instructorPage.stream().forEach(instructor -> {
                    var monthSalary = new Salary();
                    monthSalary.setInstructor(instructor);
                    monthSalary.setAmount(BigDecimal.ZERO);
                    monthSalary.setCurrency("USD");
                    monthSalary.setRecipientWallet("PayPal");
                    salaryRepository.save(monthSalary);
                });
                if(!instructorPage.isLast()) instructorPage = instructorService.getInstructorOnPaging(instructorPage.getPageable().getPageNumber() + 1, 20);
            }while(!instructorPage.isLast());
        }
    }
    @Override
    public InstructorFinanceDto getInstructorFinance(String instructorEmail){
        var instructorInfo = instructorService.findInstructorDtoByInstructorEmail(instructorEmail);
        var salary = salaryRepository.getSalariesByInstructorID(instructorInfo.id());
        var courseList = courseService.getCoursesByInstructorEmail(instructorEmail);
        BigDecimal totalPrice = BigDecimal.ZERO;
        BigDecimal totalLearner = BigDecimal.ZERO;
        for(CourseDto course: courseList){
            var total = myLearningService.getQuantityOfLeaningCourse(course.id());
            totalLearner = totalLearner.add(total);
            totalPrice = totalPrice.add(total.multiply(course.price()));
        }
        return InstructorFinanceDto.builder()
                .instructorInfo(instructorInfo)
                .monthlySalary(salary.get().getAmount())
                .courseSelling(totalLearner)
                .totalMoneySelling(totalPrice)
                .build();
    }
    @Override
    public void updateSalary(String instructorEmail, BigDecimal income){
        var instructorInfo = instructorService.findInstructorByInstructorEmail(instructorEmail);
        updateSalary(instructorInfo, income);
    }
    @Override
    public void updateSalary(Instructor instructorInfo, BigDecimal income){
        var salaryInfo = salaryRepository.getSalariesByInstructorID(instructorInfo.getId()).orElseThrow(
                () -> new EntityNotFoundException("The salary for this instructor is invalid")
        );
        income = income.multiply(PROFIT_PERCENTAGE);
        salaryInfo.setAmount(salaryInfo.getAmount().add(income));
        salaryRepository.save(salaryInfo);
    }
    @Override
    public byte[] getSalaryExcelOfMonths(Integer month, Integer year, String staffEmail){
        var staff = staffService.searchStaffByEmail(staffEmail);
        var date = Date.valueOf(LocalDate.of(year, month,1));
        var salaryList = salaryRepository.getSalariesByYearsAndMonth(date);
        try (Workbook workbook = new XSSFWorkbook()) {
            Sheet sheet = workbook.createSheet("SalaryData");

            Row headerRow = sheet.createRow(0);
            headerRow.createCell(0).setCellValue("Email/Phone");
            headerRow.createCell(1).setCellValue("Amount");
            headerRow.createCell(2).setCellValue("Currency code");
            headerRow.createCell(3).setCellValue("Reference ID (optional)");
            headerRow.createCell(4).setCellValue("Note to recipient");
            headerRow.createCell(5).setCellValue("Recipient wallet");
            headerRow.createCell(6).setCellValue("Social Feed Privacy (optional)");
            headerRow.createCell(7).setCellValue("Holler URL (deprecated)");
            headerRow.createCell(8).setCellValue("Logo URL (optional)");

            int rowNum = 1;
            for (Salary salary : salaryList) {
                Row row = sheet.createRow(rowNum++);
                row.createCell(0).setCellValue(salary.getInstructor().getPaypalEmail());
                row.createCell(1).setCellValue(salary.getAmount().doubleValue());
                row.createCell(2).setCellValue(salary.getCurrency());
                row.createCell(3).setCellValue("");
                row.createCell(4).setCellValue("Here is your salary, " + salary.getInstructor().getFullName());
                row.createCell(5).setCellValue(salary.getRecipientWallet());
                row.createCell(6).setCellValue("PUBLIC");
                row.createCell(7).setCellValue("");
                row.createCell(8).setCellValue("");
            }
            try (ByteArrayOutputStream outputStream = new ByteArrayOutputStream()) {
                workbook.write(outputStream);
                return outputStream.toByteArray();
            }

        } catch (IOException e) {
            throw new SomethingWentWrongExceptions("Error when trying to export data to csv file");
        }
    }
 }
