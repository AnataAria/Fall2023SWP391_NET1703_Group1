package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.model.entity.Instructor;
import com.group1.drawingcouseselling.repository.InstructorRepository;
import com.group1.drawingcouseselling.service.InstructorService;
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
        return Optional.of(instructorRepository.save(instructor));
    }
}
