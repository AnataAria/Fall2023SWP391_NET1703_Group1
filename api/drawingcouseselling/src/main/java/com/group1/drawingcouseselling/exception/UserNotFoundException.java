package com.group1.drawingcouseselling.exception;

import jakarta.servlet.http.HttpServletRequest;

public class UserNotFoundException extends RuntimeException{
    public UserNotFoundException (String message){
        super(message);
    }
}
