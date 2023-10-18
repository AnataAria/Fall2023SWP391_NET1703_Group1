package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.exception.CourseNotFoundException;
import com.group1.drawingcouseselling.model.dto.CourseAllInfoDto;
import com.group1.drawingcouseselling.model.dto.CourseCreateDto;
import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.model.entity.Course;

import java.math.BigDecimal;
import java.util.List;

public interface CourseService {
    public List<CourseDto> getAllCourseByPaging(Integer paging, Integer maxPage);
    public CourseDto searchCourseById(BigDecimal id) throws CourseNotFoundException;

    public CourseDto addCourse(CourseDto course);

    public List<CourseDto> searchCourseByNameAndFilter(String name, Integer page, Integer maxPage);
    public CourseDto createCourseUsingJwt(CourseCreateDto course, String instructorEmail);
    public List<CourseDto> searchCourseByNameAndFilterRandom(String name, Integer page, Integer maxPage);
    public boolean isCourseCreateByRightEmail(String inputEmail, BigDecimal id);
    public Course searchCourseEntityById(BigDecimal id);
    public List<CourseDto> getCoursesByInstructorEmail(String email);
    public CourseDto updateCourse(CourseDto courseData, String email);
    public CourseAllInfoDto getAllInfoOfCourse(BigDecimal id);
}
