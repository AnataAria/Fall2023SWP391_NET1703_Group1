package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.CourseAllInfoDto;
import com.group1.drawingcouseselling.model.dto.CourseCreateDto;
import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.service.CourseService;
import com.group1.drawingcouseselling.service.JwtService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@RestController
public class CourseController {
    private final CourseService courseService;
    private final JwtService jwtService;
    @Autowired
    public CourseController(CourseService courseService, JwtService jwtService) {
        this.courseService = courseService;
        this.jwtService = jwtService;
    }
    @GetMapping(value = "/courses")
    public ResponseEntity<List<CourseDto>> getAllCourse(@RequestParam(required = false, value = "name") String name,
                                                        @RequestParam(value = "page", defaultValue = "1") Integer page,
                                                        @RequestParam(value = "maxPage", defaultValue = "5") Integer maxSize,
                                                        @RequestParam(value = "random", defaultValue = "false") Boolean isRandom
    )
    {
        if(name!=null){
            if(isRandom) return new ResponseEntity<>(courseService.searchCourseByNameAndFilter(name, page,maxSize), HttpStatus.OK);
            return new ResponseEntity<>(courseService.searchCourseByNameAndFilter(name, page, maxSize), HttpStatus.OK);
        }
        return new ResponseEntity<>(courseService.getAllCourseByPaging(page, maxSize), HttpStatus.OK);
    }
    @GetMapping("/courses/instructor")
    public ResponseEntity<List<CourseDto>> getInstructorCourseList(@RequestHeader(value = "Authorization") String jwt){
        String email = jwtService.extractUserEmail(jwt.substring(7));
        return ResponseEntity.ok(courseService.getCoursesByInstructorEmail(email));
    }
    @GetMapping(value = "/course")
    public ResponseEntity<CourseDto> getCourseByID(@RequestParam(value = "id")BigDecimal id){
        return new ResponseEntity<>(courseService.searchCourseById(id), HttpStatus.OK);
    }
    @GetMapping(value = "/course/all")
    public ResponseEntity<CourseAllInfoDto> getAllInfoCourse(BigDecimal id,  @RequestHeader(value = "Authorization") String jwt){
        return ResponseEntity.ok(courseService.getAllInfoOfCourse(id));
    }
    @GetMapping(value = "/course/info")
    public ResponseEntity<CourseAllInfoDto> getCourseDefaultInfo(){
        return null;
    }
    @PostMapping(value = "/course")
    public ResponseEntity<CourseDto> createCourse(@RequestBody @Valid CourseCreateDto courseData, @RequestHeader(value = "Authorization") String jwt){
        String email = jwtService.extractUserEmail(jwt.substring(7));
        return ResponseEntity.ok(courseService.createCourseUsingJwt(courseData, email));
    }
    @PutMapping(value = "/course")
    public ResponseEntity<CourseDto> updateCourse(@RequestBody CourseDto courseData,  @RequestHeader(value = "Authorization") String jwt){
        String email = jwtService.extractUserEmail(jwt.substring(7));
        return ResponseEntity.ok(courseService.updateCourse(courseData, email));
    }

    @DeleteMapping(value = "/course")
    public ResponseEntity<CourseDto> deleteCourse(@RequestParam(value = "id") BigDecimal id, @RequestHeader(value = "Authorization") String jwt){
        return null;
    }
}
