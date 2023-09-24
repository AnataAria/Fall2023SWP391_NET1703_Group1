package com.group1.drawingcouseselling.exception;

import com.group1.drawingcouseselling.model.dto.ErrorMessage;
import org.springframework.http.HttpStatus;

import java.util.List;

public class EmailIsMatchedException extends BaseException {

    public EmailIsMatchedException(String message) {
        super(message);
        this.errorMessage = ErrorMessage.builder()
                .status(HttpStatus.BAD_REQUEST)
                .errorList(List.of(message.split(",")))
                .build();
    }
}
