package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.CertificationDto;
import com.group1.drawingcouseselling.service.CertificateService;
import com.group1.drawingcouseselling.service.JwtService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/certificates")
@RequiredArgsConstructor
public class CertificateController {
    private final CertificateService certificateService;
    private final JwtService jwtService;
    @GetMapping ("/all")
    public ResponseEntity<List<CertificationDto>> getAllCertificatesOfCustomer(@RequestHeader("Authorization") String authorization){
        String email = jwtService.extractUserEmail(authorization.substring(7));
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        return ResponseEntity.ok().headers(headers).body(certificateService.getAllCertificatesListOfCustomer(email));
    }
}
