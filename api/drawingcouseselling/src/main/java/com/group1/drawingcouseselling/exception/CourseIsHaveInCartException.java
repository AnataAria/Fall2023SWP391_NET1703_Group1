package com.group1.drawingcouseselling.exception;

import com.group1.drawingcouseselling.model.dto.ErrorMessage;
import org.springframework.http.HttpStatus;

import java.util.Date;
import java.util.List;

public class CourseIsHaveInCartException extends BaseException{
    public CourseIsHaveInCartException(String message) {
        super(message);
        this.errorMessage = ErrorMessage.builder()
                .status(HttpStatus.valueOf(405))
                .errorList(List.of(message.split(",")))
                .currentTimeError(new Date(System.currentTimeMillis()))
                .build();
    }
}
