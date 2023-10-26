package com.group1.drawingcouseselling.exception;

import com.group1.drawingcouseselling.model.dto.ErrorMessage;
import org.springframework.http.HttpStatus;

import java.util.Date;
import java.util.List;

public class CourseAlreadyBoughtException extends BaseException{
    public CourseAlreadyBoughtException(String message) {
        super(message);
        this.errorMessage = ErrorMessage.builder()
                .status(HttpStatus.CONFLICT)
                .errorList(List.of(message.split(",")))
                .currentTimeError(new Date(System.currentTimeMillis()))
                .build();
    }
}
