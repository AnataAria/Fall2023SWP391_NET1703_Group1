package com.group1.drawingcouseselling.model.dto;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.springframework.http.HttpStatus;

import java.util.List;
@Builder
@Getter
@Setter
public class ErrorMessage {
    private List<String> errorList;
    private HttpStatus status;
    public ErrorMessage(List<String> message, HttpStatus status) {
        this.errorList=  message;
        this.status = status;
    }
}
