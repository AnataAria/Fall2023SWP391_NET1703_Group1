package com.group1.drawingcouseselling.exception;

import org.springframework.http.HttpStatus;

public class BaseException extends RuntimeException {
    private HttpStatus status;

    public BaseException(String message, Throwable cause) {
        super(message);
    }
}

