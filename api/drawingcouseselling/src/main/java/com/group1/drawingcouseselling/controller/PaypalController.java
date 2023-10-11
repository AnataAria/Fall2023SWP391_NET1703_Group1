package com.group1.drawingcouseselling.controller;

import com.group1.drawingcouseselling.model.dto.OrderDto;
import com.group1.drawingcouseselling.service.JwtService;
import com.group1.drawingcouseselling.service.PaymentService;
import com.group1.drawingcouseselling.service.PaypalService;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequiredArgsConstructor
public class PaypalController {
    public static final String SUCCESS_URL = "pay/success";
    public static final String CANCEL_URL = "pay/cancel";
    ;
    private final PaymentService paymentService;
    @Value("${api.base.url}")
    public String apiBaseUrl;
    @Value("${frontend.url}")
    private String FRONTEND_URL;
    @Autowired
    PaypalService paypalService;
    private final JwtService jwtService;
    @GetMapping("/home")
    public String home() {
        return "home";
    }

    @PostMapping("/pay")
    public String payment(@RequestBody OrderDto order, @RequestHeader(value = "Authorization", defaultValue = "") String token) {
        String email = jwtService.extractUserEmail(token.substring(7));
        try {
            Payment payment = paypalService.createPayment(order.getPrice(),
                    order.getCurrency(), order.getMethod(),
                    order.getIntent(), order.getDescription(),
                    apiBaseUrl + CANCEL_URL, apiBaseUrl + SUCCESS_URL);
            for (Links links : payment.getLinks()) {
                if (links.getRel().equals("approval_url")) {
                    paymentService.savePaymentInfo(payment.getId(),email);
                    return links.getHref();
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
    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId, HttpServletResponse response) {
        try {
            Payment payment = paypalService.executePayment(paymentId, payerId);
            System.out.println(payment.toJSON());
            if (payment.getState().equals("approved")) {
                paymentService.orderPayment(paymentId);
                try{
                    response.sendRedirect(FRONTEND_URL + "pay/success?paymentID=" + paymentId);
                }catch(Exception e){

                }

                return "success";
            }else{
                paymentService.clearAccountPaymentInfo(paymentId);
            }
        } catch (PayPalRESTException e) {
            System.out.println(e.getMessage());
        }
        return "redirect:/home";
    }
}
