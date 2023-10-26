package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.CourseNotFoundException;
import com.group1.drawingcouseselling.exception.CourseNotOwnedException;
import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.dto.CourseContentCompletionDto;
import com.group1.drawingcouseselling.model.entity.CourseContentCompletion;
import com.group1.drawingcouseselling.repository.CourseContentCompletionRepository;
import com.group1.drawingcouseselling.service.CourseContentCompletionService;
import com.group1.drawingcouseselling.service.CourseContentService;
import com.group1.drawingcouseselling.service.CourseService;
import com.group1.drawingcouseselling.service.CustomerService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CourseContentCompletionServiceImpl implements CourseContentCompletionService {
    private final CustomerService customerService;
    private final CourseContentService courseContentService;
    private final CourseService courseService;
    private final CourseContentCompletionRepository courseContentCompletionRepository;
    @Override
    public CourseContentCompletionDto markCourseContentCompletion(BigDecimal courseContentID, String customerEmail){
        var customerInfo = customerService.searchCustomerByEmail(customerEmail);
        if(customerInfo.isEmpty()) throw new UserNotFoundException("Not found this customer");
        var courseContent = courseContentService.getCourseContentById(courseContentID);
        var course = courseService.getCourseByCourseContentID(courseContentID);
        customerInfo.get().getCourseList().stream().parallel().filter(c -> c.getId().equals(course.getId())).findFirst().orElseThrow(() -> new CourseNotOwnedException("You haven't owned this course"));
        var currentCourseContentCompletion = courseContentCompletionRepository.searchCourseContentCompletionByCourseContentAndCustomerID(courseContent.getId(), customerInfo.get().getId());
        if(currentCourseContentCompletion == null){
            currentCourseContentCompletion = new CourseContentCompletion();
            currentCourseContentCompletion.setCustomer(customerInfo.get());
            currentCourseContentCompletion.setDone(true);
            currentCourseContentCompletion.setCourseContent(courseContent);
        }else{
            currentCourseContentCompletion.setDone(true);
        }
        var result = courseContentCompletionRepository.save(currentCourseContentCompletion);
        if (result == null) throw new UserNotFoundException("");
        return CourseContentCompletionDto.builder()
                .courseContentID(courseContent.getId())
                .customerID(customerInfo.get().getId())
                .isDone(currentCourseContentCompletion.getDone())
                .finishDate(currentCourseContentCompletion.getFinishDate())
                .id(result.getId())
                .build();
    }
    @Override
    public List<CourseContentCompletionDto>getCustomerCourseContentCompletionList(BigDecimal courseID, String email){
        var customerInfo = customerService.searchCustomerByEmail(email);
        if(customerInfo.isEmpty()) throw new UserNotFoundException("Not found this customer");
        var course = customerInfo.get().getCourseList().stream().parallel().filter(c -> c.getId().equals(courseID)).findFirst().orElseThrow(() -> new CourseNotOwnedException("You haven't owned this course"));
        return courseContentCompletionRepository.getCourseContentCompletionByCustomerID(customerInfo.get().getId(), course.getId()).stream().map(c ->{
            return CourseContentCompletionDto.builder()
                    .id(c.getId())
                    .courseContentID(c.getCourseContent().getId())
                    .isDone(c.getDone())
                    .customerID(c.getCustomer().getId())
                    .finishDate(c.getFinishDate())
                    .build();
        }).toList();
    }
    @Override
    public BigDecimal getQuantityCustomerAccessCourseContent(BigDecimal courseContentID){
        return courseContentCompletionRepository.countCustomerLearningCourseSection(courseContentID);
    }
}
