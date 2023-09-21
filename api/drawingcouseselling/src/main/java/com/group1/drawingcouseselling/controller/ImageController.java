package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.enums.ES3;
import com.group1.drawingcouseselling.service.MetadataService;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@AllArgsConstructor
public class ImageController {
    private MetadataService metadataService;

    @PostMapping("/upload/image")
    public ResponseEntity<?> uploadImage(
            @RequestParam("file") MultipartFile file) throws IOException {
        metadataService.upload(file, ES3.images);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @PostMapping("/upload/certification")
    public ResponseEntity<?> uploadCertification(
            @RequestParam("file") MultipartFile file) throws IOException {
        metadataService.upload(file, ES3.centification);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }
    @PostMapping("/upload/avatar")
    public ResponseEntity<?> uploadAvatar(
            @RequestParam("file") MultipartFile file) throws IOException {
        metadataService.upload(file, ES3.avatar);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }
}
