package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.service.ReviewService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;

@RestController
@RequiredArgsConstructor
public class ReviewController {
    private final ReviewService reviewService;
    @GetMapping("/review/rating")
    public ResponseEntity<Double> getCourseRating(@RequestParam("courseID") BigDecimal courseID){
        return ResponseEntity.ok(reviewService.getCourseAverageRating(courseID));
    }
}
