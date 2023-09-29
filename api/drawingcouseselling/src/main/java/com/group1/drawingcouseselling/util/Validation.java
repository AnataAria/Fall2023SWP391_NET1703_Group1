package com.group1.drawingcouseselling.util;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Validation {
    public static String EMAIL_PATTERN = "^(.+)@(.+)$";
    @Bean
    public static Boolean validateEmail(String email){
        if (email.matches(EMAIL_PATTERN)) {
            System.out.println("Valid email");
            return true;
        } else {
            System.out.println("Invalid email");
            return false;
        }
    }
    public static String PHONE_PATTERN = "^\\d{10}$";
    @Bean
    public static Boolean validatePhoneNumber(String phone) {
        if (phone.matches(PHONE_PATTERN)) {
            System.out.println("Valid phone number");
            return true;
        } else {
            System.out.println("Invalid phone number");
            return false;
        }
    }

}
