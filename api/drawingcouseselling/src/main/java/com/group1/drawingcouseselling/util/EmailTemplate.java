package com.group1.drawingcouseselling.util;

public class EmailTemplate {
    public String OTPNumber(String username, String OTP) {
        return "<p>Hello " + username + "</p>"
                + "<p>For security reason, you're required to use the following "
                + "One Time Password to login:</p>"
                + "<p><b>" + OTP + "</b></p>"
                + "<br>"
                + "<p>Note: this OTP is set to expire in 4 minutes.</p>";
    }
    public String resetPasswordOTP(String username, int OTP, String url) {
        return "<p>Hello " + username + "</p>"
                + "<p>Click the link below to reset your password: </p>"
                + "<p><b>" + url + OTP + "</b></p>"
                + "<br>"
                + "<p>Note: this link is set to expire in 4 minutes.</p>";
    }
}
