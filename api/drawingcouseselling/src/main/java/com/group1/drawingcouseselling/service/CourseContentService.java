package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.CourseContentCreateDto;
import com.group1.drawingcouseselling.model.dto.CourseContentDto;

import java.math.BigDecimal;
import java.util.List;

public interface CourseContentService {
    public CourseContentDto createCourseContent(CourseContentCreateDto data);
    public CourseContentDto updateCourseContent(CourseContentDto data);
    public List<CourseContentDto> getCourseContentDtoOfSection(BigDecimal sectionID);
}
