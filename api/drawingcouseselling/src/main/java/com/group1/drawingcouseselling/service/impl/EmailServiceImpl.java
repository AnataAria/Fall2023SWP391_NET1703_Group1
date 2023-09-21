package com.group1.drawingcouseselling.service.impl;
import com.group1.drawingcouseselling.model.entity.Account;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import java.util.Properties;

@Service
public class EmailServiceImpl {




    public void SendEmail(Account account) {

        JavaMailSender mailSender = getJavaMailSender();
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("dgnln.2021@gmail.com");
        message.setTo(account.getEmail());
        message.setSubject("Hello");
        message.setText("This is an otp code without ");

        mailSender.send(message);
    }

    public JavaMailSender getJavaMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587); // Default SMTP port for TLS
        mailSender.setUsername("dgnln.2021@gmail.com");
        mailSender.setPassword("oraifoyezmfedalo");

        Properties props = mailSender.getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        return mailSender;
    }

}

