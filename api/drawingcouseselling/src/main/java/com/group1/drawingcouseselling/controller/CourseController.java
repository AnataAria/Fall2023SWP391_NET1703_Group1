package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.*;
import com.group1.drawingcouseselling.service.CourseService;
import com.group1.drawingcouseselling.service.JwtService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
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
            if(Boolean.TRUE.equals(isRandom)) return new ResponseEntity<>(courseService.searchCourseByNameAndFilter(name, page,maxSize), HttpStatus.OK);
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
    public ResponseEntity<CourseAllInfoDto> getAllInfoCourse(@RequestParam(value = "id") BigDecimal id,  @RequestHeader(value = "Authorization") String jwt){
        return ResponseEntity.ok(courseService.getAllInfoOfCourse(id));
    }
    @GetMapping(value = "/course/info")
    public ResponseEntity<CourseDefaultInfo> getCourseDefaultInfo(@RequestParam(value = "id") BigDecimal id){
        return ResponseEntity.ok(courseService.getAllCourseDefaultInfo(id));
    }
    @PostMapping(value = "/course")
    public ResponseEntity<CourseDto> createCourse(@ModelAttribute @Valid CourseCreateDto courseData, @RequestHeader(value = "Authorization") String jwt) throws IOException {
        String email = jwtService.extractUserEmail(jwt.substring(7));
        return ResponseEntity.ok(courseService.createCourseUsingJwt(courseData, email));
    }
    @PutMapping(value = "/course/edit")
    public ResponseEntity<CourseDto> updateCourse(@RequestBody @Valid CourseEditDto courseData, @RequestHeader(value = "Authorization") String jwt){
        String email = jwtService.extractUserEmail(jwt.substring(7));
        return ResponseEntity.ok(courseService.updateCourse(courseData, email));
    }

    @DeleteMapping(value = "/course/delete")
    public ResponseEntity<CourseDto> deleteCourse(@RequestParam(value = "id") BigDecimal id, @RequestHeader(value = "Authorization") String jwt){
        String email = jwtService.extractUserEmail(jwt.substring(7));
        return ResponseEntity.ok(courseService.removeCourseUsingCourseID(id, email));
    }
}
