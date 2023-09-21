package com.group1.drawingcouseselling;



import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import java.util.Properties;

@SpringBootTest
class ApplicationWebConfigTests {
	@Autowired
	//private JavaMailSender mailSender = new JavaMailSenderImpl();




		public static void sendEmail() {
			JavaMailSender mailSender = getJavaMailSender();
			SimpleMailMessage message = new SimpleMailMessage();
			message.setFrom("dgnln.2021@gmail.com");
			message.setTo("thanlong421999@gmail.com");
			message.setSubject("Hello");
			message.setText("This is a test email");

			mailSender.send(message);
		}

		static JavaMailSender getJavaMailSender() {
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

@Test
	void contextLoads(){
		sendEmail();
}






}
