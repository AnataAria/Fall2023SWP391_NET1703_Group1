package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.SectionDefaultInfo;
import com.group1.drawingcouseselling.model.dto.SectionDetailDto;
import com.group1.drawingcouseselling.model.dto.SectionDto;
import com.group1.drawingcouseselling.model.entity.Section;

import java.math.BigDecimal;
import java.util.List;

public interface SectionService {
    public SectionDto createSection(SectionDto section, BigDecimal courseID, String email);

    public List<SectionDto> getAllSectionOfCourse(BigDecimal courseID, String email);
    public SectionDto getSectionById(BigDecimal sectionID);
    public List<SectionDto> getAllSectionByCourseID(BigDecimal courseID);
    public Section getSectionEntityBySectionID(BigDecimal sectionID);
    public List<SectionDetailDto> getListSectionDetailByCourseID(BigDecimal id);
    public SectionDto updateSection(SectionDto section, String email);
    public SectionDto removeSection(BigDecimal id, String email);
    public List<SectionDefaultInfo> getSectionDefaultInfoByCourseID(BigDecimal courseID);
}
