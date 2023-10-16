package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.model.dto.CourseContentDto;
import com.group1.drawingcouseselling.model.entity.CourseContent;
import com.group1.drawingcouseselling.service.CourseContentService;
import com.group1.drawingcouseselling.service.SectionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
@RequiredArgsConstructor
public class CourseContentServiceImpl implements CourseContentService {
    private final SectionService sectionService;
    public CourseContentDto createCourseContentDto(CourseContentDto content, BigDecimal sectionId){
        CourseContent courseContent = new CourseContent().covertDtoToEntity(content);
        courseContent.setSection(sectionService.getSectionEntityBySectionID(sectionId));
        return null;
    }
}
