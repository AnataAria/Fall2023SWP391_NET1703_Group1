package com.group1.drawingcouseselling.exception;

import com.group1.drawingcouseselling.model.dto.ErrorMessage;
import lombok.Builder;
import org.springframework.http.HttpStatus;

import java.util.Date;
import java.util.List;
@Builder
public class ConditionNotMetException extends BaseException{
    public ConditionNotMetException(String message) {
        super(message);
        this.errorMessage = ErrorMessage.builder()
                .status(HttpStatus.PRECONDITION_FAILED)
                .errorList(List.of(message.split(",")))
                .currentTimeError(new Date(System.currentTimeMillis()))
                .build();
    }
}
