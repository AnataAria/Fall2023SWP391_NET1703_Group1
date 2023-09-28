package com.group1.drawingcouseselling.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@Order(2)
@EnableWebSecurity
public class Oauth2SecurityConfig {
    @Bean
    public SecurityFilterChain oauth2SecurityFilterChain(HttpSecurity http) throws Exception {
        return http.
                csrf()
                .disable()
                .authorizeHttpRequests(oauth2 ->{
//                        oauth2.requestMatchers("/accounts").authenticated();
//                        oauth2.requestMatchers("/oauth/*").permitAll();
                            oauth2.anyRequest().permitAll();
                        }
                )
//                .oauth2Login().and()
                .build();
    }
}
