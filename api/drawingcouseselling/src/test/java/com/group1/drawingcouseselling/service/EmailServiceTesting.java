package com.group1.drawingcouseselling.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.webservices.server.WebServiceServerTest;
import org.springframework.mail.javamail.JavaMailSender;

@WebServiceServerTest
public class EmailServiceTesting {

    @Autowired
    private JavaMailSender mailSender;




}
