package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.EntityNotFoundException;
import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.model.dto.InstructorFinanceDto;
import com.group1.drawingcouseselling.model.entity.Salary;
import com.group1.drawingcouseselling.repository.SalaryRepository;
import com.group1.drawingcouseselling.service.*;
import lombok.RequiredArgsConstructor;
import lombok.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDate;

@Service
@RequiredArgsConstructor
public class SalaryServiceImpl implements SalaryService {
    private final SalaryRepository salaryRepository;
    private final InstructorService instructorService;
    private final CourseService courseService;
    private final MyLearningService myLearningService;
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
                    var instructorAcc = instructor.getAccount();
                    monthSalary.setInstructor(instructor);
                    monthSalary.setAmount(BigDecimal.ZERO);
                    monthSalary.setCurrency("USD");
                    monthSalary.setEmail(instructorAcc.getEmail());
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
        var salaryInfo = salaryRepository.getSalariesByInstructorID(instructorInfo.getId()).orElseThrow(
                () -> new EntityNotFoundException("The salary for this instructor is invalid")
        );
        income = income.multiply(PROFIT_PERCENTAGE);
        salaryInfo.setAmount(salaryInfo.getAmount().add(income));
        salaryRepository.save(salaryInfo);
    }
}
