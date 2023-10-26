package com.group1.drawingcouseselling.exception;

import com.group1.drawingcouseselling.model.dto.ErrorMessage;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.HttpStatus;

import java.util.Date;
import java.util.List;

public class UserNotFoundException extends BaseException{
    public UserNotFoundException (String message){
        super(message);
        this.errorMessage = ErrorMessage.builder()
                .status(HttpStatus.NOT_FOUND)
                .errorList(List.of(message))
                .currentTimeError(new Date(System.currentTimeMillis()))
                .build();
    }
}
