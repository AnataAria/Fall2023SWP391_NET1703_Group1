package com.group1.drawingcouseselling.model.dto;

import org.springframework.http.HttpStatus;

public class ErrorMessage {
    private String[] message;
    private HttpStatus status;

    public ErrorMessage(String message, HttpStatus status) {
    }
}
