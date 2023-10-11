package com.group1.drawingcouseselling.service.impl;

import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.group1.drawingcouseselling.service.MyLearningService;
import com.group1.drawingcouseselling.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImpl implements PaymentService {
    private final MyLearningService myLearningService;
    private LoadingCache<String, String> paymentAccountInfo;
    @Autowired
    public PaymentServiceImpl(MyLearningService myLearningService) {
        super();
        this.myLearningService = myLearningService;
        paymentAccountInfo = CacheBuilder.newBuilder().build(new CacheLoader<String, String>() {
            @Override
            public String load(String s) {
                return "1";
            }
        });
    }
    @Override
    public void savePaymentInfo(String paymentToken, String email){
        paymentAccountInfo.put(paymentToken, email);
    }
    @Override
    public void orderPayment(String paymentToken){
        String email = getAccountPaymentInfo(paymentToken);
        if(!email.isEmpty()){
            myLearningService.orderCourse(email);
            clearAccountPaymentInfo(paymentToken);
        }
    }
    @Override
    public String getAccountPaymentInfo(String key){
        try{
            return paymentAccountInfo.get(key);
        }catch (Exception e){
            return "";
        }
    }
    @Override
    public void clearAccountPaymentInfo(String key){
        paymentAccountInfo.invalidate(key);
    }
}
