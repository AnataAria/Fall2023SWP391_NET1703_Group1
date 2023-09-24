package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.service.EmailService;
import com.group1.drawingcouseselling.service.OTPService;
import com.group1.drawingcouseselling.util.EmailTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;

@RestController
public class OTPController {
    @Autowired
    public OTPService otpService;
    @Autowired
    public EmailService emailService;

    @GetMapping("/generateOtp")
    public ResponseEntity<String> generateOTP(@RequestParam("email") String email) throws MessagingException, jakarta.mail.MessagingException {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String username = auth.getName();
        int otp = otpService.generateOTP(username);

        EmailTemplate template = new EmailTemplate();
        String message = template.getMessage(username, String.valueOf(otp));
        emailService.sendOtpMessage(email, "Ademy - OTP", message);

        return new ResponseEntity<>("Check your inbox", HttpStatus.OK);
    }

    @RequestMapping(value = "/validateOtp", method = RequestMethod.GET)
    public @ResponseBody String validateOtp(@RequestParam("otpnum") int otpnum) {

        final String SUCCESS = "Entered Otp is valid";
        final String FAIL = "Entered Otp is NOT valid. Please Retry!";
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String username = auth.getName();
        //Validate the Otp
        if (otpnum >= 0) {

            int serverOtp = otpService.getOtp(username);
            if (serverOtp > 0) {
                if (otpnum == serverOtp) {
                    otpService.clearOTP(username);

                    return (SUCCESS);
                } else {
                    return FAIL;
                }
            } else {
                return FAIL;
            }
        } else {
            return FAIL;
        }
    }
}