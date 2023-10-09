package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.service.JwtService;
import com.group1.drawingcouseselling.service.MyLearningService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class MyLearningController {
    private final MyLearningService myLearningService;
    private final JwtService jwtService;
    @GetMapping("/mylearning")
    public ResponseEntity<?> getAllLearingCourses(@RequestHeader(value = "Authorization", defaultValue = "") String token){
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(myLearningService.getLearningCourseList(email));
    }
}
