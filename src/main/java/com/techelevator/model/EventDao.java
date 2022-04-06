package com.techelevator.model;

import org.bouncycastle.util.encoders.Base64;

import java.time.LocalDate;
import java.time.LocalTime;

public interface EventDao {

    public Event createNewEvent(String eventName, java.sql.Date  eventDate, java.sql.Time eventTime);


}

//    public User saveUser(String userName, String password, String role) {
//        byte[] salt = passwordHasher.generateRandomSalt();
//        String hashedPassword = passwordHasher.computeHash(password, salt);
//        String saltString = new String(Base64.encode(salt));
//        long newId = jdbcTemplate.queryForObject(
//                "INSERT INTO app_user(user_name, password, salt, role) VALUES (?, ?, ?, ?) RETURNING id", Long.class,
//                userName, hashedPassword, saltString, role);
//
//        User newUser = new User();
//        newUser.setId(newId);
//        newUser.setUsername(userName);
//        newUser.setRole(role);
//
//        return newUser;
//    }
