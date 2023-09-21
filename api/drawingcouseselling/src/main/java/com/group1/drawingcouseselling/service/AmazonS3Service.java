package com.group1.drawingcouseselling.service;

import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.S3Object;
import org.springframework.stereotype.Service;

import java.io.InputStream;
import java.util.Map;
import java.util.Optional;

@Service
public interface AmazonS3Service {
    public PutObjectResult upload (
            String path,
            String fileName,
            Optional<Map<String,String>> optionalMetaData,
            InputStream inputStream
    );
    public S3Object download(
            String path, String fileName
    );
}
