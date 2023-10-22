package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.CourseNotFoundException;
import com.group1.drawingcouseselling.model.dto.CourseContentCreateDto;
import com.group1.drawingcouseselling.model.dto.CourseContentDto;
import com.group1.drawingcouseselling.model.entity.CourseContent;
import com.group1.drawingcouseselling.model.entity.Section;
import com.group1.drawingcouseselling.repository.CourseContentRepository;
import com.group1.drawingcouseselling.repository.CourseSectionCompletionRepository;
import com.group1.drawingcouseselling.service.CourseContentService;
import com.group1.drawingcouseselling.service.SectionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CourseContentServiceImpl implements CourseContentService {
    private final SectionService sectionService;
    private final CourseContentRepository courseContentRepository;

    @Override
    public CourseContentDto createCourseContent(CourseContentCreateDto data) {
        BigDecimal id = data.sectionID();
        CourseContentDto ccd = data.courseContent();
        Section sec = sectionService.getSectionEntityBySectionID(id);
        CourseContent course  = new CourseContent().covertDtoToEntity(ccd);
        course.setSection(sec);
        course.setCreateDate(null);
        return new CourseContent().convertEntityToDto(courseContentRepository.save(course));
    }
    @Override
    public CourseContentDto updateCourseContent(CourseContentDto data) {
        return null;
    }
    @Override
    public List<CourseContentDto> getCourseContentDtoOfSection(BigDecimal sectionID){
        return courseContentRepository.getCourseContentBySectionId(sectionID).stream().map(c -> new CourseContent().convertEntityToDto(c)).toList();
    }

    @Override
    public CourseContent getCourseContentById(BigDecimal id) {
        return courseContentRepository.findById(id).orElseThrow(() -> new CourseNotFoundException(""));
    }
}
