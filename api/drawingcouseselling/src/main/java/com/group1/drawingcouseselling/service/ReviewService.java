package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.ReviewCreateDto;
import com.group1.drawingcouseselling.model.dto.ReviewDto;
import org.springframework.data.domain.Page;

import java.math.BigDecimal;

public interface ReviewService {
    public Double getCourseAverageRating(BigDecimal courseID);
    public ReviewDto createPostReviewCourse(ReviewCreateDto post, String customerEmail);
    public Page<ReviewDto> getReviewsInCourse(BigDecimal courseID, Integer page, Integer maxPage);
}
