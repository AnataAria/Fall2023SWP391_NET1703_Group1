package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.CourseContentCompletionDto;
import com.group1.drawingcouseselling.model.dto.ExamDto;
import com.group1.drawingcouseselling.service.CourseContentCompletionService;
import com.group1.drawingcouseselling.service.JwtService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequiredArgsConstructor
public class CourseContentCompletionController {
    private final JwtService jwtService;
    private final CourseContentCompletionService courseContentCompletionService;
    @GetMapping("/course-content-completion/completed")
    public ResponseEntity<CourseContentCompletionDto> markAsCompleted(@RequestHeader(value = "Authorization") String authorization,
                                                                      @RequestParam(value="id") BigDecimal id)
    {
        String email = jwtService.extractUserEmail(authorization.substring(7));
        return ResponseEntity.ok(courseContentCompletionService.markCourseContentCompletion(id,email));
    }
    @GetMapping("/course-content-completion/course")
    public ResponseEntity<List<CourseContentCompletionDto>> getCustomerCourseCompleted(@RequestParam(value = "courseID") BigDecimal id,
                                                                                       @RequestHeader(value = "Authorization") String authorization)
    {
        String email = jwtService.extractUserEmail(authorization.substring(7));
        return ResponseEntity.ok(courseContentCompletionService.getCustomerCourseContentCompletionList(id,email));
    }

    @GetMapping("/course-content-completion/course-content")
    public ResponseEntity<Boolean>isCourseContentCompleted(@RequestParam(value = "courseID") BigDecimal id,
                                                           @RequestHeader(value = "Authorization") String authorization){
        String email = jwtService.extractUserEmail(authorization.substring(7));
        return ResponseEntity.ok(courseContentCompletionService.checkCourseContentCompleted(id, email));
    }
    @GetMapping("/course-content-completion/submit-exam")
    public ResponseEntity<ExamDto>submitExam(@RequestParam(value = "id")BigDecimal id,
                                             @RequestParam(value = "file")MultipartFile file,
                                             @RequestHeader(value = "Authorization") String authorization){
        String email = jwtService.extractUserEmail(authorization.substring(7));
        return ResponseEntity.ok(courseContentCompletionService.submitCourseContentExam(id, file, email));
    }
}
