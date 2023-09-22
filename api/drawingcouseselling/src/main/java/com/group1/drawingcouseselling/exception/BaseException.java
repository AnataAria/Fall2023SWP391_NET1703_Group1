package com.group1.drawingcouseselling.exception;

import com.group1.drawingcouseselling.model.dto.ErrorMessage;
import lombok.Getter;
import org.springframework.http.HttpStatus;
@Getter
public class BaseException extends RuntimeException {
    protected ErrorMessage errorMessage;

    public BaseException(String message) {
        super(message);
    }
}

