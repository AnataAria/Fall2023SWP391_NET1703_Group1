package com.group1.drawingcouseselling.controller.exception;

import com.group1.drawingcouseselling.exception.ExistedUserException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class ApplicationExceptionController {
    @ExceptionHandler(ExistedUserException.class)
    @ResponseStatus(value = HttpStatus.NOT_ACCEPTABLE)
    public ResponseEntity<?> existedUserException(ExistedUserException existedUserException){
        return new ResponseEntity<>(existedUserException, HttpStatus.NOT_ACCEPTABLE);
    }
}
