package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.CertificationDto;
import com.group1.drawingcouseselling.service.CertificateService;
import com.group1.drawingcouseselling.service.JwtService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
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
        return ResponseEntity.ok().headers(headers).body(certificateService.getAllCertificatesListOfCustomer(email));
    }
    @GetMapping("/file/{courseID}/{customerID}")
    public ResponseEntity<byte[]> getPdf(@PathVariable(name = "customerID") BigDecimal customerID,@PathVariable(name = "courseID") BigDecimal courseID){
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_PDF);

        var data = certificateService.getCertificateFileByCertificateID(courseID,customerID);
        return ResponseEntity.ok()
                .headers(headers)
                .body(data);
    }
    @GetMapping("/download/{courseID}/{customerID}")
    public ResponseEntity<byte[]> downloadPdf(@PathVariable(name = "customerID") BigDecimal customerID,@PathVariable(name = "courseID") BigDecimal courseID){
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_PDF);
        headers.setContentDisposition(ContentDisposition.builder("inline").filename("example.pdf").build());
        var data = certificateService.getCertificateFileByCertificateID(courseID,customerID);
        return ResponseEntity.ok()
                .headers(headers)
                .body(data);
    }
}
