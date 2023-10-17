package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.SectionDto;
import com.group1.drawingcouseselling.service.JwtService;
import com.group1.drawingcouseselling.service.SectionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequiredArgsConstructor
public class SectionController {
    private final SectionService sectionService;
    private final JwtService jwtService;
    @PostMapping("/section")
    public ResponseEntity<SectionDto> createSection(@RequestBody SectionDto sectionDto, @RequestHeader("Authorization") String token) {
        String email = jwtService.extractUserEmail(token.substring(7));
        return ResponseEntity.ok(sectionService.createSection(sectionDto, sectionDto.courseID(), email));
    }

    @GetMapping("/section")
    public ResponseEntity<SectionDto> getSection(@RequestParam(value = "id")BigDecimal id){
        return ResponseEntity.ok(sectionService.getSectionById(id));
    }

    @GetMapping("/sections")
    public ResponseEntity<List<SectionDto>> getSections(@RequestHeader("Authorization") String token,@RequestParam("id") BigDecimal id){
        return ResponseEntity.ok(sectionService.getAllSectionByCourseID(id));
    }

}
