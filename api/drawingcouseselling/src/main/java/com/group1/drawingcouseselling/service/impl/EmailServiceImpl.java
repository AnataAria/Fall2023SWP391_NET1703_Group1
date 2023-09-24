package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.model.entity.Account;
import com.group1.drawingcouseselling.service.EmailService;
import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import java.util.Properties;

@Service
public class EmailServiceImpl implements EmailService {
    @Autowired
    private JavaMailSender javaMailSender;

    public void SendEmail(Account account) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("dgnln.2021@gmail.com");
        message.setTo(account.getEmail());
        message.setSubject("Hello");
        message.setText("This is an otp code without ");

        javaMailSender.send(message);
    }

    public JavaMailSender getJavaMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587); // Default SMTP port for TLS
        mailSender.setUsername("no-reply.ademy@gmail.com");
        mailSender.setPassword("oraifoyezmfedalo");

        Properties props = mailSender.getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        return mailSender;
    }

    public void sendOtpMessage(String to, String subject, String message) throws MessagingException, jakarta.mail.MessagingException {
        MimeMessage msg = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(msg, true);

        helper.setFrom("no-reply.ademy@gmail.com");
        helper.setTo(to);
        helper.setSubject(subject);
        helper.setText(message, true);
        javaMailSender.send(msg);
    }

}

