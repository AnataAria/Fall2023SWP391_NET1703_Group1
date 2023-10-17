package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.CourseContentCreateDto;
import com.group1.drawingcouseselling.model.dto.CourseContentDto;
import com.group1.drawingcouseselling.service.CourseContentService;
import com.group1.drawingcouseselling.service.JwtService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class CourseContentController {
    private final JwtService jwtService;
    private final CourseContentService courseContentService;
    @PostMapping("/course-content")
    public ResponseEntity<CourseContentDto> createCourseContent(@RequestBody CourseContentCreateDto courseContentCreateDto, @RequestHeader("Authorization") String token){
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(courseContentService.createCourseContent(courseContentCreateDto));
    }
}