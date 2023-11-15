package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.model.entity.Salary;
import com.group1.drawingcouseselling.repository.SalaryRepository;
import com.group1.drawingcouseselling.service.InstructorService;
import com.group1.drawingcouseselling.service.SalaryService;
import lombok.RequiredArgsConstructor;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.sql.Date;
import java.time.LocalDate;

@Service
@RequiredArgsConstructor
public class SalaryServiceImpl implements SalaryService {
    private final SalaryRepository salaryRepository;
    private final InstructorService instructorService;
    @Scheduled(cron = "0 0 1 0 * *")
    private void createMonthlySalaryForAllInstructor(){
        if(LocalDate.now().getDayOfMonth() == 1){
            var instructorPage = instructorService.getInstructorOnPaging(0, 20);
            do{
                instructorPage.stream().forEach(instructor -> {
                    var monthSalary = new Salary();
                    monthSalary.setInstructor(instructor);
                    monthSalary.setAmount(BigDecimal.ZERO);
                    monthSalary.setCurrency("USD");
                    monthSalary.setEmail(instructor.getAccount().getEmail());
                    monthSalary.setRecipientWallet("PayPal");
                    salaryRepository.save(monthSalary);
                });
                if(!instructorPage.isLast()) instructorPage = instructorService.getInstructorOnPaging(instructorPage.getPageable().getPageNumber() + 1, 20);
            }while(!instructorPage.isLast());
        }
    }


}
