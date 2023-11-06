package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.ExamDto;

import java.math.BigDecimal;

public interface ExamService {
    public ExamDto getExamInformation(BigDecimal courseContentID, String customerEmail);
}
