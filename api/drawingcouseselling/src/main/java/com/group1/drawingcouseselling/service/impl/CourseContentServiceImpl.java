package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.CourseNotFoundException;
import com.group1.drawingcouseselling.exception.InstructorNotPermissonToEditException;
import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.model.dto.CourseContentCreateDto;
import com.group1.drawingcouseselling.model.dto.CourseContentDto;
import com.group1.drawingcouseselling.model.dto.CourseContentEditDto;
import com.group1.drawingcouseselling.model.entity.CourseContent;
import com.group1.drawingcouseselling.model.entity.Section;
import com.group1.drawingcouseselling.repository.CourseContentRepository;
import com.group1.drawingcouseselling.service.CourseContentCompletionService;
import com.group1.drawingcouseselling.service.CourseContentService;
import com.group1.drawingcouseselling.service.InstructorService;
import com.group1.drawingcouseselling.service.SectionService;
import com.group1.drawingcouseselling.util.Tool;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
public class CourseContentServiceImpl implements CourseContentService {
    private final SectionService sectionService;
    private final CourseContentRepository courseContentRepository;
    private final InstructorService instructorService;
    private final CourseContentCompletionService courseContentCompletionService;
    private final String BASE_YT_EMBED = "https://www.youtube.com/embed/";
    @Autowired
    public CourseContentServiceImpl(SectionService sectionService, CourseContentRepository courseContentRepository, InstructorService instructorService, @Lazy CourseContentCompletionService courseContentCompletionService) {
        this.sectionService = sectionService;
        this.courseContentRepository = courseContentRepository;
        this.instructorService = instructorService;
        this.courseContentCompletionService = courseContentCompletionService;
    }

    @Override
    public CourseContentDto createCourseContent(CourseContentCreateDto data) {
        BigDecimal id = data.sectionID();
        CourseContentDto ccd = data.courseContent();
        Section sec = sectionService.getSectionEntityBySectionID(id);
        CourseContent course  = new CourseContent().covertDtoToEntity(ccd);
        course.setSection(sec);
        course.setCreateDate(null);
        var idYt = Tool.getYouTubeId(data.courseContent().videoLink());
        course.setVideoLink(BASE_YT_EMBED + idYt);
        return new CourseContent().convertEntityToDto(courseContentRepository.save(course));
    }
    @Override
    public CourseContentDto updateCourseContent(CourseContentEditDto data, String email) {
        var instructor = instructorService.findInstructorByInstructorEmail(email);
        if(instructor == null) throw new UserNotFoundException("This instructor does not exist");
        var currentCourseContent = courseContentRepository.findById(data.id()).orElseThrow(()-> new CourseNotFoundException("This course content does not exist"));
        if(currentCourseContent.getSection().getCourse().getInstuctor().getId() != instructor.getId()) throw new InstructorNotPermissonToEditException("This course content only edited by the one created");
        currentCourseContent.setVideoLink(data.videoLink());
        currentCourseContent.setTitle(data.title());
        currentCourseContent.setDescription(data.description());
        return new CourseContent().convertEntityToDto(courseContentRepository.save(currentCourseContent));
    }
    @Override
    public List<CourseContentDto> getCourseContentDtoOfSection(BigDecimal sectionID){
        return courseContentRepository.getCourseContentBySectionId(sectionID).stream().map(c -> new CourseContent().convertEntityToDto(c)).toList();
    }

    @Override
    public CourseContent getCourseContentById(BigDecimal id) {
        return courseContentRepository.findById(id).orElseThrow(() -> new CourseNotFoundException(""));
    }
    @Override
    public CourseContentDto removeCourseContent(BigDecimal id, String email){
        var instructor = instructorService.findInstructorByInstructorEmail(email);
        if(instructor == null) throw new UserNotFoundException("This instructor does not exist");
        var currentCourseContent = courseContentRepository.findById(id).orElseThrow(()-> new CourseNotFoundException("This course content does not exist"));
        if(currentCourseContent.getSection().getCourse().getInstuctor().getId() != instructor.getId()) throw new InstructorNotPermissonToEditException("This course content only edited by the one created");
        if(!courseContentCompletionService.getQuantityCustomerAccessCourseContent(id).equals(BigDecimal.ZERO)) throw new UserNotFoundException("");
        try{
            courseContentRepository.deleteById(currentCourseContent.getId());
        }catch(Exception e){

        }
        return new CourseContent().convertEntityToDto(currentCourseContent);
    }
}
