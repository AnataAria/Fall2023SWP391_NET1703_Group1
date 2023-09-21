package com.group1.drawingcouseselling;

import com.group1.drawingcouseselling.service.impl.EmailServiceImpl;
import org.springframework.boot.SpringApplication;

public class ApplicationLauncher {
    public static void main(String[] args) {
        SpringApplication.run(ApplicationWebConfig.class, args);
//        EmailServiceImpl e = new EmailServiceImpl();
//        e.SendEmail();
    }

}
