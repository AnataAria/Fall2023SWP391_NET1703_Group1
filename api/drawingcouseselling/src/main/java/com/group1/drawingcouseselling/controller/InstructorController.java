package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.InstructorDto;
import com.group1.drawingcouseselling.service.InstructorService;
import com.group1.drawingcouseselling.service.JwtService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

@RestController
@RequiredArgsConstructor
public class InstructorController {
    private final InstructorService instructorService;
    private final JwtService jwtService;
    @GetMapping("/instructor")
    public ResponseEntity<InstructorDto> getInstructorInfo(
            @RequestHeader(value = "Authorization", defaultValue = "") String instructorToken,
            @RequestParam(value = "instructorID", required = false) BigDecimal instructorID
    ){
        String email = jwtService.extractUserEmail(instructorToken.substring(7));
        return ResponseEntity.ok(instructorService.findInstructorDtoByInstructorEmail(email));
    }

    @GetMapping("/instructor/paypal")
    public ResponseEntity<InstructorDto> addPayPalEmail(@RequestHeader(value = "Authorization", defaultValue = "") String instructorToken,
                                                        @RequestParam String paypalEmail){
        String email = jwtService.extractUserEmail(instructorToken.substring(7));
        return ResponseEntity.ok(instructorService.addInstructorPayPalEmail(email,paypalEmail));
    }
}
