package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.model.entity.Review;
import com.group1.drawingcouseselling.repository.ReviewRepository;
import com.group1.drawingcouseselling.service.ReviewService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
@Service
@RequiredArgsConstructor
public class ReviewServiceImpl implements ReviewService {
    private final ReviewRepository reviewRepository;
    @Override
    public Double getCourseAverageRating(BigDecimal courseID) {
        var rating = reviewRepository.averageRatingOfCourse(courseID);
        if(rating != null) return rating;
        return 5.0;
    }

//    public Review createAnReview()

}
