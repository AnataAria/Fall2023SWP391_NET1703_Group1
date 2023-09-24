package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.Order;
import com.group1.drawingcouseselling.service.PaypalService;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@RestController
public class PaypalController {
    public static final String SUCCESS_URL = "pay/success";
    public static final String CANCEL_URL = "pay/cancel";
    @Value("${api.base.url}")
    public static String apiBaseUrl;
    @Autowired
    PaypalService paypalService;

    @GetMapping("/home")
    public String home() {
        return "home";
    }

    @PostMapping("/pay")
    public String payment(@ModelAttribute("order") Order order) {
        try {
            Payment payment = paypalService.createPayment(order.getPrice(),
                    order.getCurrency(), order.getMethod(),
                    order.getIntent(), order.getDescription(),
                    apiBaseUrl + CANCEL_URL, apiBaseUrl + SUCCESS_URL);
            for (Links links : payment.getLinks()) {
                if (links.getRel().equals("approval_url")) {
                    return "redirect:" + links.getHref();
                }
            }
        } catch (PayPalRESTException e) {
            e.printStackTrace();
        }
        return "redirect:/home";
    }

    @GetMapping(value = CANCEL_URL)
    public String cancelPay() {
        return "cancel";
    }

    @GetMapping(value = SUCCESS_URL)
    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("payerId") String payerId) {
        try {
            Payment payment = paypalService.executePayment(paymentId, payerId);
            System.out.println(payment.toJSON());
            if (payment.getState().equals("approved")) {
                return "success";
            }
        } catch (PayPalRESTException e) {
            System.out.println(e.getMessage());
        }
        return "redirect:/home";
    }
}
