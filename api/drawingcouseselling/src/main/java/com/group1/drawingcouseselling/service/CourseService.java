package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.exception.CourseNotFoundException;
import com.group1.drawingcouseselling.model.dto.*;
import com.group1.drawingcouseselling.model.entity.Course;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

public interface CourseService {
    public List<CourseDto> getAllCourseByPaging(Integer paging, Integer maxPage);
    public CourseDto searchCourseById(BigDecimal id) throws CourseNotFoundException;

    public CourseDto addCourse(CourseDto course);

    public List<CourseDto> searchCourseByNameAndFilter(String name, Integer page, Integer maxPage);
    public CourseDto createCourseUsingJwt(CourseCreateDto course, String instructorEmail) throws IOException;
    public List<CourseDto> searchCourseByNameAndFilterRandom(String name, Integer page, Integer maxPage);
    public boolean isCourseCreateByRightEmail(String inputEmail, BigDecimal id);
    public Course searchCourseEntityById(BigDecimal id);
    public List<CourseDto> getCoursesByInstructorEmail(String email);
    public CourseDto updateCourse(CourseDto courseData, String email);

    //    @Override
    //    public CourseDto updateCourse(CourseDto courseData, String email)
    //    {
    //        Course courseInDatabase = courseRepository.findById(courseData.id()).orElseThrow(()-> new CourseNotFoundException("Course ID isn't found"));
    //        Instructor instructor = instructorRepository.findInstructorByEmail(email).orElseThrow(()-> new UserNotFoundException("Can not edit because this user is not in database"));
    //        if(!Objects.equals(courseInDatabase.getInstuctor().getId(), instructor.getId())) throw new InstructorNotPermissonToEditException("The edited instructor is not the create one");
    //        Course course = new Course().covertDtoToEntity(courseData);
    //        return new Course().convertEntityToDto(courseRepository.save(course));
    //    }
    CourseDto updateCourse(CourseEditDto courseData, String email);

    public CourseAllInfoDto getAllInfoOfCourse(BigDecimal id);
    public CourseDefaultInfo getAllCourseDefaultInfo(BigDecimal id);
    public Course getCourseByCourseContentID(BigDecimal courseContentID);
    public CourseDto removeCourseUsingCourseID(BigDecimal courseID, String email);
    public Double getPercentOfCourseCompleted(BigDecimal courseID, BigDecimal customerID);
}
