package com.group1.drawingcouseselling.controller.exception;

import com.group1.drawingcouseselling.exception.CourseMissMatchException;
import com.group1.drawingcouseselling.exception.EmailIsMatchedException;
import com.group1.drawingcouseselling.exception.ExistedUserException;
import com.group1.drawingcouseselling.exception.InstructorNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class ApplicationExceptionController {
    @ExceptionHandler(CourseMissMatchException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST)
    public ResponseEntity<?> existedUserException(CourseMissMatchException courseMissMatchException){
        return new ResponseEntity<>(courseMissMatchException.getErrorMessage(),
                courseMissMatchException.getErrorMessage().getStatus());
    }

    @ExceptionHandler(EmailIsMatchedException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST)
    public ResponseEntity<?> emailIsMatchException(EmailIsMatchedException exception){
        return new ResponseEntity<>(exception.getErrorMessage(), exception.getErrorMessage().getStatus());
    }

    @ExceptionHandler(ExistedUserException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST)
    public ResponseEntity<?> existUserException(ExistedUserException exception){
        return new ResponseEntity<>(exception.getErrorMessage(), exception.getErrorMessage().getStatus());
    }

    @ExceptionHandler(InstructorNotFoundException.class)
    @ResponseStatus(value = HttpStatus.NOT_FOUND)
    public ResponseEntity<?> instructorNotFoundException(InstructorNotFoundException exception){
        return new ResponseEntity<>(exception.getErrorMessage(), exception.getErrorMessage().getStatus());
    }
}
