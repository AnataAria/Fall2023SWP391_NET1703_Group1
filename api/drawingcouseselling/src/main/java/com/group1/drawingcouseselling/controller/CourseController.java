package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.service.CourseService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CourseController {
    private CourseService courseService;

}
