package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.service.MetadataService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@AllArgsConstructor
@RequestMapping("/image")
public class ImageController {
    private MetadataService metadataService;

    @PostMapping("/upload")
    public void upload(
            @RequestParam("file")MultipartFile file) throws IOException {
        metadataService.upload(file);
    }
}
