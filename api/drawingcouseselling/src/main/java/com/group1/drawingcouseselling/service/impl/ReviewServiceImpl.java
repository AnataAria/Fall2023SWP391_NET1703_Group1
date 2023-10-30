package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.ConditionNotMetException;
import com.group1.drawingcouseselling.exception.CourseNotOwnedException;
import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.dto.ReviewCreateDto;
import com.group1.drawingcouseselling.model.dto.ReviewDto;
import com.group1.drawingcouseselling.model.entity.Course;
import com.group1.drawingcouseselling.model.entity.Customer;
import com.group1.drawingcouseselling.model.entity.Review;
import com.group1.drawingcouseselling.repository.ReviewRepository;
import com.group1.drawingcouseselling.service.CourseService;
import com.group1.drawingcouseselling.service.CustomerService;
import com.group1.drawingcouseselling.service.MyLearningService;
import com.group1.drawingcouseselling.service.ReviewService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
@Service
@RequiredArgsConstructor
public class ReviewServiceImpl implements ReviewService {
    private final ReviewRepository reviewRepository;
    private final CustomerService customerService;
    private final CourseService courseService;
    private final MyLearningService myLearningService;
    @Override
    public Double getCourseAverageRating(BigDecimal courseID) {
        var rating = reviewRepository.averageRatingOfCourse(courseID);
        if(rating != null) return rating;
        return 5.0;
    }
    @Override
    public ReviewDto createPostReviewCourse(ReviewCreateDto post, String customerEmail){
        var customer = customerService.searchCustomerByEmail(customerEmail)
        .orElseThrow(() -> new UserNotFoundException("Not found this customer with this email: " + customerEmail));
        var courseDatabase = customer.getCourseList().stream().parallel().filter(course ->
                course.getId().equals(post.courseID())).findFirst().orElseThrow(() ->
                new CourseNotOwnedException("This customer haven't owned this course yet"));
        var percent =  courseService.getPercentOfCourseCompleted(courseDatabase.getId(), customer.getId());
        Review dataIn = new Review();
        if(percent.equals(100.0)){
            dataIn.setCourse(courseDatabase);
            dataIn.setComment(post.comment());
            dataIn.setCustomer(customer);
            dataIn.setRating(post.rating());
        }else throw new ConditionNotMetException("This course need tobe 100% done to be reviewed");
        var result = reviewRepository.save(dataIn);
        return ReviewDto.builder()
                .id(result.getId())
                .courseID(result.getCourse().getId())
                .comment(result.getComment())
                .rating(result.getRating())
                .feedbackDate(result.getFeedbackDate())
                .updateDate(result.getUpdateDate())
                .customer(new Customer().convertEntityToDto(result.getCustomer()))
                .build();
    }
    @Override
    public Page<ReviewDto> getReviewsInCourse(BigDecimal courseID, Integer page, Integer maxPage){
        return reviewRepository.getReviewsByCourseIDPaging(courseID,
                PageRequest.of(page, maxPage, Sort.by("id").descending())).map(review -> ReviewDto.builder()
                .id(review.getId())
                .courseID(review.getCourse().getId())
                .comment(review.getComment())
                .rating(review.getRating())
                .feedbackDate(review.getFeedbackDate())
                .updateDate(review.getUpdateDate())
                .customer(new Customer().convertEntityToDto(review.getCustomer()))
                .build());
    }
}
