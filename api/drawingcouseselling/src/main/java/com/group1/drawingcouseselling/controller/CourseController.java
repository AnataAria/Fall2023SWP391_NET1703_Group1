package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.CourseDto;
import com.group1.drawingcouseselling.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@RestController
public class CourseController {
    private final CourseService courseService;
    @Autowired
    public CourseController(CourseService courseService) {
        this.courseService = courseService;
    }
    @GetMapping(value = "/courses")
    public ResponseEntity<List<CourseDto>> getAllCourse(@RequestParam(required = false, value = "name") String name,
                                                        @RequestParam(value = "page", defaultValue = "1") Integer page,
                                                        @RequestParam(value = "maxPage", defaultValue = "5") Integer maxSize)
    {
        if(name!=null){
            return new ResponseEntity<>(courseService.searchCourseByNameAndFilter(name, page, maxSize), HttpStatus.OK);
        }
        return new ResponseEntity<>(courseService.getAllCourseByPaging(page, maxSize), HttpStatus.OK);
    }
    @GetMapping(value = "/course")
    public ResponseEntity<CourseDto> getCourseByID(@RequestParam(value = "id")BigDecimal id){
        return new ResponseEntity<>(courseService.searchCourseById(id), HttpStatus.OK);
    }

}
