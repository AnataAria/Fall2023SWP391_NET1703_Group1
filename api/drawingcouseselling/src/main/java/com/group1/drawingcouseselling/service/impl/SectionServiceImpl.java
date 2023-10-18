package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.CourseNotFoundException;
import com.group1.drawingcouseselling.exception.InstructorNotPermissonToEditException;
import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.dto.SectionDetailDto;
import com.group1.drawingcouseselling.model.dto.SectionDto;
import com.group1.drawingcouseselling.model.entity.Section;
import com.group1.drawingcouseselling.repository.SectionRepository;
import com.group1.drawingcouseselling.service.CourseContentService;
import com.group1.drawingcouseselling.service.CourseService;
import com.group1.drawingcouseselling.service.InstructorService;
import com.group1.drawingcouseselling.service.SectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class SectionServiceImpl implements SectionService {
    private final SectionRepository sectionRepository;
    private final CourseService courseService;
    private final CourseContentService courseContentService;
    private InstructorService instructorService;
    @Autowired
    public SectionServiceImpl(SectionRepository sectionRepository, CourseService courseService,@Lazy CourseContentService courseContentService) {
        this.sectionRepository = sectionRepository;
        this.courseService = courseService;
        this.courseContentService = courseContentService;
    }

    @Override
    public SectionDto createSection(SectionDto section, BigDecimal courseID, String email) {
        var temp = courseService.searchCourseEntityById(courseID);
        SectionDto sectionDto;
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
    public Section getSectionEntityBySectionID(BigDecimal sectionID){
        return sectionRepository.findById(sectionID).orElseThrow();
    }

    @Override
    public List<SectionDetailDto> getListSectionDetailByCourseID(BigDecimal id) {
        List<SectionDetailDto> list = new ArrayList<>();
        List<SectionDto> secList = getAllSectionByCourseID(id);
        for(SectionDto secListDto : secList){
            list.add(SectionDetailDto.builder()
                            .sectionInfo(secListDto)
                            .lessons(courseContentService.getCourseContentDtoOfSection(secListDto.id()))
                    .build());
        }
        return list;
    }

    // Will add new custom exception later...
    @Override
    public SectionDto updateSection(SectionDto section, String email) {
        var instructor = instructorService.findInstructorByInstructorEmail(email);
        if(instructor == null) throw new UserNotFoundException("This instructor does not exist");
        var updateSection = sectionRepository.findById(section.id()).orElseThrow(() -> new CourseNotFoundException(""));
        if(instructor.getId() != updateSection.getCourse().getInstuctor().getId())
            throw new InstructorNotPermissonToEditException("Only instructor create that can update");
        updateSection.setTitle(section.title());
        return new Section().convertEntityToDto(sectionRepository.save(updateSection));
    }

    //Will add exception custom later ...
    @Override
    public SectionDto removeSection(BigDecimal id, String email){
        var instructor = instructorService.findInstructorByInstructorEmail(email);
        if(instructor == null) throw new UserNotFoundException("This instructor does not exist");
        var deletedSection = sectionRepository.findById(id).orElseThrow(() -> new CourseNotFoundException("This section is not found"));
        if(!Objects.equals(deletedSection.getCourse().getInstuctor().getId(), instructor.getId())) throw new InstructorNotPermissonToEditException("Only instructor create that can delete");
        if(!courseContentService.getCourseContentDtoOfSection(deletedSection.getId()).isEmpty()) throw new CourseNotFoundException("");
        sectionRepository.delete(deletedSection);
        return new Section().convertEntityToDto(deletedSection);
    }
}
