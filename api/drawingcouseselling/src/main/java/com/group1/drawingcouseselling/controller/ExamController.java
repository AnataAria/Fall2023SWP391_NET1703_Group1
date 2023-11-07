package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.ExamDetailInfoDto;
import com.group1.drawingcouseselling.model.dto.ExamDto;
import com.group1.drawingcouseselling.model.dto.ExamMarkDto;
import com.group1.drawingcouseselling.service.ExamService;
import com.group1.drawingcouseselling.service.JwtService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

@RestController
@RequiredArgsConstructor
public class ExamController {
    private final ExamService examService;
    private final JwtService jwtService;
    @GetMapping("/exam")
    public ResponseEntity<ExamDto> getExamSubmitted(@RequestHeader("Authorization") String authorization,
                                                    BigDecimal courseContentID)
    {
        String email = jwtService.extractUserEmail(authorization.substring(7));
        return ResponseEntity.ok(examService.getExamInformation(courseContentID, email));
    }
    @GetMapping("/exams/instructor")
    public ResponseEntity<Page<ExamDto>> getExamsSubmittedListOnPaging(@RequestHeader("Authorization") String authorization,
                                                                       @RequestParam(value = "page", defaultValue = "0") Integer page,
                                                                       @RequestParam(value = "maxPage", defaultValue = "10") Integer maxPage
                                                                       ){
        String email = jwtService.extractUserEmail(authorization.substring(7));
        return ResponseEntity.ok(examService.getExamListAndPaging(page,maxPage,email));
    }

    @GetMapping("/exams/detailinfo")
    public ResponseEntity<ExamDetailInfoDto> getExamDetailInformation(BigDecimal examID){
        return ResponseEntity.ok(examService.getExamInfoDetail(examID));
    }

    @PostMapping("/exam/mark")
    public ResponseEntity<ExamDto> markExam(@RequestHeader("Authorization") String authorization,
                                            @RequestBody ExamMarkDto examMark
    ){
        String instructorEmail = jwtService.extractUserEmail(authorization.substring(7));
        return ResponseEntity.ok(examService.assignScoreSubmit(instructorEmail,examMark));
    }
}
