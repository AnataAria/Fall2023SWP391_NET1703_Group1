package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.dto.CourseContentCreateDto;
import com.group1.drawingcouseselling.model.dto.CourseContentDto;
import com.group1.drawingcouseselling.model.dto.CourseContentEditDto;
import com.group1.drawingcouseselling.model.entity.CourseContent;

import java.math.BigDecimal;
import java.util.List;

public interface CourseContentService {
    public CourseContentDto createCourseContent(CourseContentCreateDto data);
    public CourseContentDto updateCourseContent(CourseContentEditDto data, String email);
    public List<CourseContentDto> getCourseContentDtoOfSection(BigDecimal sectionID);
    public CourseContent getCourseContentById(BigDecimal id);
}
