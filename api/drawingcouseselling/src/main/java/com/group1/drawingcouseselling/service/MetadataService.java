package com.group1.drawingcouseselling.service;

import com.amazonaws.services.s3.model.S3Object;
import com.group1.drawingcouseselling.model.entity.FileMeta;
import com.group1.drawingcouseselling.model.enums.ES3;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface MetadataService {
    public String upload(MultipartFile file, ES3 folder) throws IOException;
    public S3Object download (int id);
    public List<FileMeta> list();
}
