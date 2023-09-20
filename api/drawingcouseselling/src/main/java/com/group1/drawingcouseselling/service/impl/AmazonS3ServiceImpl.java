package com.group1.drawingcouseselling.service.impl;

import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.S3Object;
import com.group1.drawingcouseselling.repository.FileMetaRepository;
import com.group1.drawingcouseselling.service.AmazonS3Service;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.InputStream;
import java.util.Map;
import java.util.Optional;

@Service
@Slf4j
public class AmazonS3ServiceImpl implements AmazonS3Service {
    @Autowired
    private AmazonS3 amazonS3;

    @Autowired
    private FileMetaRepository fileMetaRepository;

    @Override
    public PutObjectResult upload(
            String path,
            String fileName,
            Optional<Map<String, String>> optionalMetaData,
            InputStream inputStream) {
        ObjectMetadata objectMetadata = new ObjectMetadata();
        optionalMetaData.ifPresent(map -> {
            if (!map.isEmpty()) {
                map.forEach(objectMetadata::addUserMetadata);
            }
        });
        log.debug("Path: " + path + ", FileName:" + fileName);
        return amazonS3.putObject(path, fileName, inputStream, objectMetadata);

    }
    public S3Object download (String path, String fileName) {
        return amazonS3.getObject(path, fileName);
    }
}
