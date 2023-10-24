package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.*;
import com.group1.drawingcouseselling.model.dto.*;
import com.group1.drawingcouseselling.model.entity.Course;
import com.group1.drawingcouseselling.model.entity.Instructor;
import com.group1.drawingcouseselling.repository.CourseRepository;
import com.group1.drawingcouseselling.repository.InstructorRepository;
import com.group1.drawingcouseselling.service.CourseService;
import com.group1.drawingcouseselling.service.InstructorService;
import com.group1.drawingcouseselling.service.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Objects;

@Service
public class CourseServiceImpl implements CourseService {
    private final CourseRepository courseRepository;
    private final InstructorRepository instructorRepository;
    private final InstructorService instructorService;
    private final SectionService sectionService;
    @Autowired
    public CourseServiceImpl(CourseRepository courseRepository, InstructorRepository instructorRepository, InstructorService instructorService, @Lazy SectionService sectionService) {
        this.courseRepository = courseRepository;
        this.instructorRepository = instructorRepository;
        this.instructorService = instructorService;
        this.sectionService = sectionService;
    }
    @Override
    public List<CourseDto> getAllCourseByPaging(Integer paging, Integer maxPage) {
        return courseRepository.getCourseOnPaging(PageRequest.of(paging-1,maxPage))
                .stream()
                .map(course
                        -> new Course().convertEntityToDto(course)).toList();
    }

    @Override
    public CourseDto searchCourseById(BigDecimal id) throws CourseNotFoundException {
        Course temp  = courseRepository.findById(id).orElseThrow(() ->new CourseNotFoundException("Not found Course with ID: " + id));
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
        return courseRepository.searchCourseByNameAndFilter(name,PageRequest.of(page-1,maxPage, sort))
              .stream()
              .map(course -> new Course().convertEntityToDto(course)).toList();
    }

    public List<CourseDto> searchCourseByNameAndFilterRandom(String name, Integer page, Integer maxPage){
        Sort sort = Sort.by(Sort.Direction.ASC, "id");
        return courseRepository.searchCourseByNameAndFilter(name,PageRequest.of(page-1,maxPage, sort))
                .stream()
                .map(course -> new Course().convertEntityToDto(course)).toList();
    }
    @Override
    public CourseDto createCourseUsingJwt(CourseCreateDto course, String instructorEmail){
        Course courseNew = new Course();
        CourseDto courseDto;
        courseNew.setName(course.name());
        courseNew.setDescription(course.description());
        courseNew.setPrice(course.price());
        courseNew.setDuration(course.durations());
        courseNew.setInstuctor(instructorService.findInstructorByInstructorEmail(instructorEmail));
        try{
            courseDto = new Course().convertEntityToDto(courseRepository.save(courseNew));
        }catch(IllegalArgumentException | DataIntegrityViolationException e){
            throw new ValueIsInvalidException("Course value isn't valid");
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
    @Override
    public CourseDto updateCourse(CourseDto courseData, String email)
    {
        Course courseInDatabase = courseRepository.findById(courseData.id()).orElseThrow(()-> new CourseNotFoundException("Course ID isn't found"));
        Instructor instructor = instructorRepository.findInstructorByEmail(email).orElseThrow(()-> new UserNotFoundException("Can not edit because this user is not in database"));
        if(!Objects.equals(courseInDatabase.getInstuctor().getId(), instructor.getId())) throw new InstructorNotPermissonToEditException("The edited instructor is not the create one");
        Course course = new Course().covertDtoToEntity(courseData);
        return new Course().convertEntityToDto(courseRepository.save(course));
    }
    @Override
    public CourseDto updateCourse(CourseEditDto courseData, String email){
        Course courseInDatabase = courseRepository.findById(courseData.id()).orElseThrow(()-> new CourseNotFoundException("Course ID isn't found"));
        Instructor instructor = instructorRepository.findInstructorByEmail(email).orElseThrow(()-> new UserNotFoundException("Can not edit because this user is not in database"));
        if(!Objects.equals(courseInDatabase.getInstuctor().getId(), instructor.getId())) throw new InstructorNotPermissonToEditException("The edited instructor is not the create one");
        courseInDatabase.setName(courseData.name());
        courseInDatabase.setPrice(courseData.price());
        courseInDatabase.setDuration(courseData.durations());
        courseInDatabase.setDescription(courseData.description());
        return new Course().convertEntityToDto(courseRepository.save(courseInDatabase));
    }
    @Override
    public CourseAllInfoDto getAllInfoOfCourse(BigDecimal id){
        var course = searchCourseById(id);
        var sections = sectionService.getListSectionDetailByCourseID(id);
        return CourseAllInfoDto.builder()
                .courseInfo(course)
                .sections(sections)
                .build();
    }
    @Override
    public CourseDefaultInfo getAllCourseDefaultInfo(BigDecimal id){
        var course = searchCourseById(id);
        return CourseDefaultInfo.builder()
                .courseInfo(course)
                .sectionList(sectionService.getSectionDefaultInfoByCourseID(id))
                .build();
    }
    @Override
    public Course getCourseByCourseContentID(BigDecimal courseContentID){
        return courseRepository.searchCourseByCourseContentID(courseContentID);
    }

}
