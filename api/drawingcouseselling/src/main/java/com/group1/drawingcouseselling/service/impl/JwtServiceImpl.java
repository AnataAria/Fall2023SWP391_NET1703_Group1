package com.group1.drawingcouseselling.service.impl;

import com.group1.drawingcouseselling.service.JwtService;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

@Service
public class JwtServiceImpl implements JwtService {
    @Value("${jwt-key.secret-key}")
    private String SECRET_KEY;
    @Override
    public String extractUserEmail(String token) {
        return extractClaims(token, Claims::getSubject);
    }

    public String generateToken(UserDetails accountDetails){
        return generateToken(new HashMap<>(), accountDetails);
    }

    public String generateToken(Map<String, Object> extraClaims, UserDetails accountDetails) {
        return Jwts
                .builder()
                .setClaims(extraClaims)
                .setSubject(accountDetails.getUsername())
                .setIssuedAt(new Date(System.currentTimeMillis()))
                .setExpiration(new Date(System.currentTimeMillis() + 1000 * 60 * 24))
                .signWith(getStigningKey(), SignatureAlgorithm.HS256)
                .compact();
    }

    public Boolean isTokenValid(String token, UserDetails accountDetails){
        final String username = extractUserEmail(token);
        return (username.equals(accountDetails.getUsername()) && !isTokenExpired(token));
    }

    private Boolean isTokenExpired(String token){
        return extractExpiration(token).before(new Date());
    }

    private Date extractExpiration(String token){
        return extractClaims(token, Claims::getExpiration);
    }

    @Override
    public <T> T extractClaims(String token, Function<Claims, T> claimFunction) {
        final Claims claims = extractAllClaims(token);
        return claimFunction.apply(claims);
    }

    private Claims extractAllClaims(String token) {
        return Jwts
                .parserBuilder()
                .setSigningKey(getStigningKey())
                .build()
                .parseClaimsJws(token)
                .getBody();
    }
    private Key getStigningKey() {
        byte[] keyBytes = Decoders.BASE64.decode(SECRET_KEY);
        return Keys.hmacShaKeyFor(keyBytes);
    }
}
