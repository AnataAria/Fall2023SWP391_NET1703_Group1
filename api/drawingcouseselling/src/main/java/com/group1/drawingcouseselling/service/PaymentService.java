package com.group1.drawingcouseselling.service;

public interface PaymentService {
    public void savePaymentInfo(String paymentToken, String email);
    public void orderPayment(String paymentToken);
    public String getAccountPaymentInfo(String key);
    public void clearAccountPaymentInfo(String key);
}
