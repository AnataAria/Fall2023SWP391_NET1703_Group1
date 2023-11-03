package com.group1.drawingcouseselling.controller.exception;

import com.group1.drawingcouseselling.exception.*;
import com.group1.drawingcouseselling.model.dto.ErrorMessage;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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

    @ExceptionHandler(UserNotFoundException.class)
    @ResponseStatus(value = HttpStatus.NOT_FOUND)
    public ResponseEntity<?> userNotFoundException(UserNotFoundException exception){
        return new ResponseEntity<>(exception.getErrorMessage(), exception.getErrorMessage().getStatus());
    }
    @ExceptionHandler(CourseIsHaveInCartException.class)
    @ResponseStatus(HttpStatus.NOT_EXTENDED)
    public ResponseEntity<?> courseIsHaveInCartException(CourseIsHaveInCartException exception){
        return new ResponseEntity<>(exception.getErrorMessage(), exception.getErrorMessage().getStatus());
    }

    @ExceptionHandler(ValueIsInvalidException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ResponseEntity<?> valueIsInvalidException(ValueIsInvalidException exception){
        return new ResponseEntity<>(exception.getErrorMessage(), exception.getErrorMessage().getStatus());
    }
    @ExceptionHandler(CourseAlreadyBoughtException.class)
    @ResponseStatus(HttpStatus.CONFLICT)
    public ResponseEntity<?> courseAlreadyBoughtException(CourseAlreadyBoughtException exception){
        return new ResponseEntity<>(exception.getErrorMessage(), exception.getErrorMessage().getStatus());
    }
    @ExceptionHandler(BindException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ResponseEntity<?> bindException(BindException exception){
        List<FieldError> fieldErrors = exception.getFieldErrors();
        List<String> errorMessages = new ArrayList<>();

        for (FieldError fieldError : fieldErrors) {
            errorMessages.add(fieldError.getDefaultMessage());
        }
        return new ResponseEntity<>(ErrorMessage.builder()
                .currentTimeError(new Date(System.currentTimeMillis()))
                .errorList(errorMessages)
                .status(HttpStatus.BAD_REQUEST)
                .build(), HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(ActionNotAllowException.class)
    @ResponseStatus(HttpStatus.NOT_ACCEPTABLE)
    public ResponseEntity<?> actionNotAllowException(ActionNotAllowException exception){
        return new ResponseEntity<>(exception.getErrorMessage(), exception.getErrorMessage().getStatus());
    }

    @ExceptionHandler(CourseNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ResponseEntity<?> courseNotFoundException(CourseNotFoundException exception){
        return new ResponseEntity<>(exception.getErrorMessage(), exception.getErrorMessage().getStatus());
    }
    @ExceptionHandler(CourseNotOwnedException.class)
    @ResponseStatus(HttpStatus.NOT_ACCEPTABLE)
    public ResponseEntity<?> courseNotOwnedException(CourseNotOwnedException exception){
        return new ResponseEntity<>(exception.getErrorMessage(),exception.getErrorMessage().getStatus());
    }
    @ExceptionHandler(EntityNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ResponseEntity<?> entityNotFoundException(EntityNotFoundException exception){
        return new ResponseEntity<>(exception.getErrorMessage(),exception.getErrorMessage().getStatus());
    }

    @ExceptionHandler(ConditionNotMetException.class)
    @ResponseStatus(HttpStatus.PRECONDITION_FAILED)
    public ResponseEntity<?> conditionNotMetException(ConditionNotMetException exception){
        return new ResponseEntity<>(exception.getErrorMessage(),exception.getErrorMessage().getStatus());
    }

    @ExceptionHandler(CourseContentExistedInsideSection.class)
    public ResponseEntity<?> CourseContentExistedInsideSection(CourseContentExistedInsideSection exception){
        return new ResponseEntity<>(exception.getErrorMessage(), exception.getErrorMessage().getStatus());
    }
}
