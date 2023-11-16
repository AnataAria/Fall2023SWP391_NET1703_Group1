package com.group1.drawingcouseselling.service;


import com.group1.drawingcouseselling.model.dto.InstructorDto;
import com.group1.drawingcouseselling.model.entity.Instructor;
import org.springframework.data.domain.Page;

import java.util.Optional;

public interface InstructorService {
    Optional<Instructor> addInstructor(Instructor instructor);
    public Instructor findInstructorByInstructorEmail(String instructorEmail);
    public InstructorDto findInstructorDtoByInstructorEmail(String instructorEmail);
    public Page<Instructor> getInstructorOnPaging(Integer page, Integer maxPage);
    public InstructorDto addInstructorPayPalEmail(String instructorEmail, String paypalEmail);
}
