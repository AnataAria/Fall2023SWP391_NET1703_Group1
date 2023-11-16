package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.exception.InstructorNotFoundException;
import com.group1.drawingcouseselling.exception.UserNotFoundException;
import com.group1.drawingcouseselling.exception.ValueIsInvalidException;
import com.group1.drawingcouseselling.model.dto.InstructorDto;
import com.group1.drawingcouseselling.model.entity.Instructor;
import com.group1.drawingcouseselling.repository.InstructorRepository;
import com.group1.drawingcouseselling.service.InstructorService;
import com.group1.drawingcouseselling.util.Tool;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
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
        Instructor result;
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
    @Override
    public InstructorDto findInstructorDtoByInstructorEmail(String instructorEmail){
        return instructorRepository.findInstructorByEmail(instructorEmail).map(c -> new Instructor().convertEntityToDto(c)).orElseThrow(()-> new InstructorNotFoundException("Not found instructor with this email")) ;
    }
    @Override
    public Page<Instructor> getInstructorOnPaging(Integer page, Integer maxPage){
        return instructorRepository.getInstructorsOnPaging(PageRequest.of(page,maxPage));
    }
    @Override
    public InstructorDto addInstructorPayPalEmail(String instructorEmail, String paypalEmail){
        var instructorInfo = instructorRepository.findInstructorByEmail(instructorEmail).orElseThrow(
                () -> new UserNotFoundException("Not found this instructor in system")
        );
        if(!Tool.isValidEmailAddress(paypalEmail)) throw new ValueIsInvalidException("Email is not valid");
        instructorInfo.setPaypalEmail(paypalEmail);
        return new Instructor().convertEntityToDto(instructorRepository.save(instructorInfo));
    }
}
