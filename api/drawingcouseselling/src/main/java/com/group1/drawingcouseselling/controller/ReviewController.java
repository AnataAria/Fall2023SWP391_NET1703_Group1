package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.ReviewCreateDto;
import com.group1.drawingcouseselling.model.dto.ReviewDto;
import com.group1.drawingcouseselling.service.JwtService;
import com.group1.drawingcouseselling.service.ReviewService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

@RestController
@RequiredArgsConstructor
public class ReviewController {
    private final ReviewService reviewService;
    private final JwtService jwtService;
    @GetMapping("/review/rating")
    public ResponseEntity<Double> getCourseRating(@RequestParam("courseID") BigDecimal courseID){
        return ResponseEntity.ok(reviewService.getCourseAverageRating(courseID));
    }
    @PostMapping("/review/post")
    public ResponseEntity<ReviewDto> createReview(@RequestBody ReviewCreateDto reviewCreateDto,
                                                  @RequestHeader(value = "Authorization") String token) {
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(reviewService.createPostReviewCourse(reviewCreateDto, email));
    }
    @GetMapping(value= "/reviews")
    public ResponseEntity<Page<ReviewDto>> getReviewsInCourse(@RequestParam(value = "courseID") BigDecimal courseID,
                                                              @RequestParam(value = "page", defaultValue = "0") Integer page,
                                                              @RequestParam(value = "maxPage", defaultValue = "5") Integer maxPage){
        return ResponseEntity.ok(reviewService.getReviewsInCourse(courseID, page, maxPage));
    }
}
