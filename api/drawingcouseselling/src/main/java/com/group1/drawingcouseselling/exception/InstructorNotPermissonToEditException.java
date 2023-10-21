package com.group1.drawingcouseselling.exception;

import com.group1.drawingcouseselling.model.dto.ErrorMessage;
import org.springframework.http.HttpStatus;

import java.util.List;

public class InstructorNotPermissonToEditException extends BaseException {

    public InstructorNotPermissonToEditException(String message) {
        super(message);
        this.errorMessage = ErrorMessage.builder()
                .status(HttpStatus.NOT_ACCEPTABLE)
                .errorList(List.of(message.split(",")))
                .build();
    }
}
