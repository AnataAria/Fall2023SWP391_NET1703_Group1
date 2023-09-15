package com.group1.drawingcouseselling.exception;

public class ExistedUserException extends RuntimeException{
    public ExistedUserException (String message){
        super(message);
    }
}
