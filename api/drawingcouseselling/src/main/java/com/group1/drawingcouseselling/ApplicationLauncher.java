package com.group1.drawingcouseselling;

import com.group1.drawingcouseselling.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

public class ApplicationLauncher {
    public static void main(String[] args) {
        SpringApplication.run(ApplicationWebConfig.class, args);
    }
}
