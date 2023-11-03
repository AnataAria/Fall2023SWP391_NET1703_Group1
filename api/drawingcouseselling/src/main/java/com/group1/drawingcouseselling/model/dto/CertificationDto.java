package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;
import java.sql.Date;

@Builder
public record CertificationDto(BigDecimal id,
                               String lectureName,
                               Date recieveDate,
                               CourseDto courseID,
                               String path) {
}
