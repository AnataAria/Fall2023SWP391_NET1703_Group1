package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.ExamDto;
import com.group1.drawingcouseselling.service.ExamService;
import com.group1.drawingcouseselling.service.JwtService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RestController;

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
}
