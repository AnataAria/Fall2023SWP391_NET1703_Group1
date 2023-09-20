package com.group1.drawingcouseselling;

import com.group1.drawingcouseselling.service.EmailService;
import com.group1.drawingcouseselling.service.EmailServiceTesting;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ApplicationWebConfigTests {
	@Autowired
	private EmailService emailService;
	@Test
	void contextLoads() {
		sendEmail();
	}

	public void sendEmail() {
		String to = "thanlong421999@gmail.com";
		String subject = "Hello";
		String text = "This is a test email";
		System.out.println("haha");
		emailService.sendEmail(to, subject, text);
	}

}
