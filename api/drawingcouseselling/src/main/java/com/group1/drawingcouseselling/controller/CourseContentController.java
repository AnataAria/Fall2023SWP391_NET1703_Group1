package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.CourseContentCreateDto;
import com.group1.drawingcouseselling.model.dto.CourseContentDto;
import com.group1.drawingcouseselling.model.dto.CourseContentEditDto;
import com.group1.drawingcouseselling.service.CourseContentService;
import com.group1.drawingcouseselling.service.JwtService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

@RestController
@RequiredArgsConstructor
public class CourseContentController {
    private final JwtService jwtService;
    private final CourseContentService courseContentService;
    @PostMapping("/course-content")
    public ResponseEntity<CourseContentDto> createCourseContent(@RequestBody @Valid CourseContentCreateDto courseContentCreateDto, @RequestHeader("Authorization") String token){
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(courseContentService.createCourseContent(courseContentCreateDto));
    }
    @PutMapping("/course-content/edit")
    public ResponseEntity<CourseContentDto> updateCourseContent(@RequestBody @Valid CourseContentEditDto data,  @RequestHeader("Authorization") String token){
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(courseContentService.updateCourseContent(data,email));
    }
    @DeleteMapping("/course-content/delete")
    public ResponseEntity<CourseContentDto> deleteCourseContent(@RequestParam("id") BigDecimal id, @RequestHeader("Authorization") String token){
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(courseContentService.removeCourseContent(id,email));
    }
}