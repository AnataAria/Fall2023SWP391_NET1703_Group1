package com.group1.drawingcouseselling;

public class UserNotFoundException extends RuntimeException{
    public UserNotFoundException (String message){
        super(message);
    }
}
