package com.group1.drawingcouseselling.service;

import com.paypal.api.payments.Transaction;

public interface PaymentService {
    public void savePaymentInfo(String paymentToken, String email);
    public void orderPayment(String paymentToken, Transaction transaction);
    public String getAccountPaymentInfo(String key);
    public void clearAccountPaymentInfo(String key);
}
