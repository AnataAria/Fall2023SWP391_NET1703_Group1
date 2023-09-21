package com.group1.drawingcouseselling.util;

import jakarta.persistence.Entity;

import java.io.Serializable;

public interface ObjectMapper<T, U extends Record>
        extends Serializable {
    public T covertDtoToEntity(U data);
    public U convertEntityToDto(T data);
}
