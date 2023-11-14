package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.*;
import com.group1.drawingcouseselling.model.dto.*;
import com.group1.drawingcouseselling.model.entity.Course;
import com.group1.drawingcouseselling.model.entity.Instructor;
import com.group1.drawingcouseselling.model.enums.ES3;
import com.group1.drawingcouseselling.repository.CourseRepository;
import com.group1.drawingcouseselling.repository.InstructorRepository;
import com.group1.drawingcouseselling.service.*;
import com.group1.drawingcouseselling.util.Tool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class CourseServiceImpl implements CourseService {
    private final CourseRepository courseRepository;
    private final InstructorRepository instructorRepository;
    private final InstructorService instructorService;
    private final SectionService sectionService;
    private final MyLearningService myLearningService;
    private final CourseContentCompletionService courseContentCompletionService;
    private final CertificateService certificateService;
    private final MetadataService metadataService;
    @Autowired
    public CourseServiceImpl(CourseRepository courseRepository,
                             InstructorRepository instructorRepository,
                             InstructorService instructorService,
                             @Lazy SectionService sectionService,
                             MyLearningService myLearningService,
                             @Lazy CourseContentCompletionService courseContentCompletionService,
                             @Lazy CertificateService certificateService,
                             AmazonS3Service amazonS3Service, MetadataService metadataService) {
        this.courseRepository = courseRepository;
        this.instructorRepository = instructorRepository;
        this.instructorService = instructorService;
        this.sectionService = sectionService;
        this.myLearningService = myLearningService;
        this.courseContentCompletionService = courseContentCompletionService;
        this.certificateService = certificateService;
        this.metadataService = metadataService;
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
        Course temp  = courseRepository.findById(id).orElseThrow(() ->
                new CourseNotFoundException("Not found Course with ID: " + id));
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
    public CourseDto createCourseUsingJwt(CourseCreateDto course, String instructorEmail) throws IOException {
        Course courseNew = new Course();
        String s3Path = "https://ademyimage.s3.ap-southeast-1.amazonaws.com/course_images/";
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
        if (courseDto != null){
            var newImageName = Tool.changeMultipartFileName("course_" + courseDto.id().toString(), course.file());
            var path = metadataService.upload(newImageName, ES3.course_images);
            Course courseInDatabase = courseRepository.findById(courseDto.id()).orElseThrow(()->
                    new CourseNotFoundException("Course ID isn't found"));
            courseInDatabase.setThumbnailPath(s3Path + path);
            courseDto = new Course().convertEntityToDto(courseRepository.save(courseInDatabase));
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
        Course courseInDatabase = courseRepository.findById(courseData.id()).orElseThrow(()->
                new CourseNotFoundException("Course ID isn't found"));
        Instructor instructor = instructorRepository.findInstructorByEmail(email).orElseThrow(()->
                new UserNotFoundException("Can not edit because this user is not in database"));
        if(!Objects.equals(courseInDatabase.getInstuctor().getId(), instructor.getId()))
            throw new InstructorNotPermissonToEditException("The edited instructor is not the create one");
        Course course = new Course().covertDtoToEntity(courseData);
        return new Course().convertEntityToDto(courseRepository.save(course));
    }
    @Override
    public CourseDto updateCourse(CourseEditDto courseData, String email){
        Course courseInDatabase = courseRepository.findById(courseData.id()).orElseThrow(()->
                new CourseNotFoundException("Course ID isn't found"));
        Instructor instructor = instructorRepository.findInstructorByEmail(email).orElseThrow(()->
                new UserNotFoundException("Can not edit because this user is not in database"));
        if(!Objects.equals(courseInDatabase.getInstuctor().getId(), instructor.getId()))
            throw new InstructorNotPermissonToEditException("The edited instructor is not the create one");
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
    @Override
    public CourseDto removeCourseUsingCourseID(BigDecimal courseID, String email){
        var course = courseRepository.findById(courseID).orElseThrow(() ->
                new CourseNotFoundException("Course not found"));
        if(!course.getInstuctor().getAccount().getEmail().equals(email))
            throw new InstructorNotPermissonToEditException("Course must be deleted by the one create it");
        if(myLearningService.checkSomeoneLearningCourse(courseID))
            throw new ActionNotAllowException("Course has been bought by user so you can not remove it");
        course.setStatus(false);
        return new Course().convertEntityToDto(courseRepository.save(course));
    }

    //Search course data, them get Section List then get course content List and check completion of course
    @Override
    public Double getPercentOfCourseCompleted(BigDecimal courseID, BigDecimal customerID){
        var course = courseRepository.findById(courseID).orElseThrow(() -> new CourseNotFoundException(""));
        List<CourseContentDto> allCourseContentList = new ArrayList<>();
        var info = getAllInfoOfCourse(course.getId());
        for (SectionDetailDto temp : info.sections()) {
            allCourseContentList.addAll(temp.lessons());
        }
        int size = courseContentCompletionService.getTotalCourseContentLearnedOnCourse(customerID,courseID);
        var percent = allCourseContentList.isEmpty() ? 100.0 : size * 100.00 / allCourseContentList.size();
        if (percent == 100.0) certificateService.createCertificate(customerID,courseID);
        return percent;
    }
}
