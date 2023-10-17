package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.CourseNotFoundException;
import com.group1.drawingcouseselling.exception.InstructorNotFoundException;
import com.group1.drawingcouseselling.model.dto.CourseCreateDto;
import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.model.entity.Course;
import com.group1.drawingcouseselling.model.entity.Instructor;
import com.group1.drawingcouseselling.repository.CourseRepository;
import com.group1.drawingcouseselling.repository.InstructorRepository;
import com.group1.drawingcouseselling.service.CourseService;
import com.group1.drawingcouseselling.service.InstructorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class CourseServiceImpl implements CourseService {
    private final CourseRepository courseRepository;
    private final InstructorRepository instructorRepository;
    private final InstructorService instructorService;
    @Autowired
    public CourseServiceImpl(CourseRepository courseRepository, InstructorRepository instructorRepository, InstructorService instructorService) {
        this.courseRepository = courseRepository;
        this.instructorRepository = instructorRepository;
        this.instructorService = instructorService;
    }
    @Override
    public List<CourseDto> getAllCourseByPaging(Integer paging, Integer maxPage) {
        return courseRepository.getCourseOnPaging(PageRequest.of(paging-1,maxPage))
                .stream()
                .map(course
                        -> new Course().convertEntityToDto(course))
                .collect(Collectors.toList());
    }

    @Override
    public CourseDto searchCourseById(BigDecimal id) throws CourseNotFoundException {
        Course temp  = courseRepository.findById(id).orElseThrow(() ->new CourseNotFoundException("Not found Course with ID: " + id.toString()));
        return new Course().convertEntityToDto(temp);
    }
    @Override
    public CourseDto addCourse(CourseDto course){
        Instructor instructor = instructorRepository.findById(course.instructorID())
                .orElseThrow(()->
                        new InstructorNotFoundException("Not found this instructor"));
        Course courseNew = new Course()
                .covertDtoToEntity(course);
        courseNew.setInstuctor(instructor);
        return new Course().convertEntityToDto(courseRepository.save(courseNew));
    }
    @Override
    public List<CourseDto> searchCourseByNameAndFilter(String name, Integer page, Integer maxPage){
        Sort sort = Sort.by(Sort.Direction.ASC, "id");
        Page<?> a = courseRepository.searchCourseByNameAndFilter(name,PageRequest.of(page-1,maxPage));
        return courseRepository.searchCourseByNameAndFilter(name,PageRequest.of(page-1,maxPage, sort))
              .stream()
              .map(course -> new Course().convertEntityToDto(course))
              .collect(Collectors.toList());
    }

    public List<CourseDto> searchCourseByNameAndFilterRandom(String name, Integer page, Integer maxPage){
        Sort sort = Sort.by(Sort.Direction.ASC, "id");
        return courseRepository.searchCourseByNameAndFilter(name,PageRequest.of(page-1,maxPage, sort))
                .stream()
                .map(course -> new Course().convertEntityToDto(course))
                .collect(Collectors.toList());
    }
    @Override
    public CourseDto createCourseUsingJwt(CourseCreateDto course, String instructorEmail){
        Course courseNew = new Course();
        CourseDto courseDto = null;
        courseNew.setName(course.name());
        courseNew.setDescription(course.description());
        courseNew.setPrice(course.price());
        courseNew.setDuration(course.durations());
        courseNew.setInstuctor(instructorService.findInstructorByInstructorEmail(instructorEmail));
        try{
            courseDto = new Course().convertEntityToDto(courseRepository.save(courseNew));
        }catch(IllegalArgumentException | DataIntegrityViolationException e){

        }
        return courseDto;
    }
    @Override
    public boolean isCourseCreateByRightEmail(String inputEmail, BigDecimal id){
        return courseRepository.findCourseByEmailAndId(inputEmail, id) != null;
    }

    @Override
    public Course searchCourseEntityById(BigDecimal id) {
        return courseRepository.findById(id).orElseThrow();
    }
    @Override
    public List<CourseDto> getCoursesByInstructorEmail(String email) {
        return courseRepository.getCoursesByInstructorEmail(email).stream().map(c -> new Course().convertEntityToDto(c)).toList();
    }

}
