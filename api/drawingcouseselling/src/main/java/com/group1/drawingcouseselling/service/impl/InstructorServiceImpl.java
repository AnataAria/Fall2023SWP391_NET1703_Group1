package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.exception.ValueIsInvalidException;
import com.group1.drawingcouseselling.model.dto.InstructorDto;
import com.group1.drawingcouseselling.model.entity.Instructor;
import com.group1.drawingcouseselling.repository.InstructorRepository;
import com.group1.drawingcouseselling.service.InstructorService;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class InstructorServiceImpl implements InstructorService {
    private final InstructorRepository instructorRepository;

    public InstructorServiceImpl(InstructorRepository instructorRepository) {
        this.instructorRepository = instructorRepository;
    }

    @Override
    public Optional<Instructor> addInstructor(Instructor instructor){
        Instructor result = null;
        try{
            result = instructorRepository.save(instructor);
        }catch(IllegalArgumentException | DataIntegrityViolationException e ){
            throw new ValueIsInvalidException(e.getMessage());
        }
        return Optional.of(result);
    }
    @Override
    public Instructor findInstructorByInstructorEmail(String instructorEmail){
        return instructorRepository.findInstructorByEmail(instructorEmail).orElseThrow(() -> new UserNotFoundException(""));
    }

}
