package com.group1.drawingcouseselling.service;

import com.group1.drawingcouseselling.model.entity.Account;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;

@Service
public interface EmailService {
    public JavaMailSender getJavaMailSender();

    public void SendEmail(Account account);

    public void sendOtpMessage(String to, String subject, String message) throws MessagingException, jakarta.mail.MessagingException;
}
