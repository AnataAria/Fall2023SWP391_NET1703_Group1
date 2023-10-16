package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.model.dto.SectionDetailDto;
import com.group1.drawingcouseselling.model.dto.SectionDto;
import com.group1.drawingcouseselling.model.entity.Section;
import com.group1.drawingcouseselling.repository.SectionRepository;
import com.group1.drawingcouseselling.service.CourseService;
import com.group1.drawingcouseselling.service.SectionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class SectionServiceImpl implements SectionService {
    private final SectionRepository sectionRepository;
    private final CourseService courseService;
    @Override
    public SectionDto createSection(SectionDto section, BigDecimal courseID, String email) {
        var temp = courseService.searchCourseEntityById(courseID);
        SectionDto sectionDto = null;
        if(courseService.isCourseCreateByRightEmail(email,courseID)) {
            var sectionIn = new Section();
            sectionIn.setTitle(section.title());
            sectionIn.setSectionOrder(section.sectionOrder());
            sectionIn.setCourse(temp);
            sectionDto = new Section().convertEntityToDto(sectionRepository.save(sectionIn));

        }else throw new IllegalStateException();
        return sectionDto ;
    }
    @Override
    public List<SectionDto> getAllSectionOfCourse(BigDecimal courseID, String email) {
        courseService.searchCourseEntityById(courseID);
        return sectionRepository.getSectionByCourseID(courseID).stream().map(c -> new Section().convertEntityToDto(c)).toList();
    }
    @Override
    public SectionDto getSectionById(BigDecimal sectionID){
        return new Section().convertEntityToDto(sectionRepository.findById(sectionID).orElseThrow());
    }
    @Override
    public List<SectionDto> getAllSectionByCourseID(BigDecimal courseID){
        return sectionRepository.getSectionByCourseID(courseID).stream().map(c -> new Section().convertEntityToDto(c)).toList();
    }
    @Override
    public List<SectionDetailDto> getAllSectionByCourseID(){
        return null;
    }
    @Override
    public Section getSectionEntityBySectionID(BigDecimal sectionID){
        return sectionRepository.findById(sectionID).orElseThrow();
    }

}
