package com.group1.drawingcouseselling.service;


import com.group1.drawingcouseselling.model.entity.Instructor;

import java.util.Optional;

public interface InstructorService {
    Optional<Instructor> addInstructor(Instructor instructor);
    public Instructor findInstructorByInstructorEmail(String instructorEmail);
}
