package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.service.JwtService;
import com.group1.drawingcouseselling.service.MyLearningService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;

@RestController
@RequiredArgsConstructor
public class MyLearningController {
    private final MyLearningService myLearningService;
    private final JwtService jwtService;
    @GetMapping("/mylearning")
    public ResponseEntity<?> getAllLearningCourses(@RequestHeader(value = "Authorization") String token){
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(myLearningService.getLearningCourseList(email));
    }
    @GetMapping("/mylearning/check")
    public ResponseEntity<?> checkCourseAlreadyBought(@RequestHeader(value = "Authorization") String token,
                                                      @RequestParam(value = "courseID")BigDecimal id)
    {
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(myLearningService.hasCourse(email,id));
    }
}
