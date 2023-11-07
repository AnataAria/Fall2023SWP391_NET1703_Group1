package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.ExamDetailInfoDto;
import com.group1.drawingcouseselling.model.dto.ExamDto;
import com.group1.drawingcouseselling.model.dto.ExamMarkDto;
import org.springframework.data.domain.Page;

import java.math.BigDecimal;

public interface ExamService {
    public ExamDto getExamInformation(BigDecimal courseContentID, String customerEmail);
    public Page<ExamDto> getExamListAndPaging(Integer page, Integer maxPage, String instructorEmail);

    public ExamDetailInfoDto getExamInfoDetail(BigDecimal examID);
    public ExamDto assignScoreSubmit(String instructorEmail, ExamMarkDto examMark);
}
