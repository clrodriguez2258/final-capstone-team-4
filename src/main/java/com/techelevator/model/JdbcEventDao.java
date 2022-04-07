package com.techelevator.model;

import com.techelevator.authentication.PasswordHasher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.time.LocalTime;

@Component
public class JdbcEventDao implements EventDao{
    private JdbcTemplate jdbcTemplate;
    @Autowired
    public JdbcEventDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public Event createNewEvent(String eventName, LocalDate  eventDate, LocalDate eventTime) {

        Event newEvent = new Event();
         Long newId =  jdbcTemplate.queryForObject("INSERT INTO event (event_name, event_date, event_time) values (?,?,?) RETURNING event_id", Long.class,
                                        eventName,eventDate,eventTime);
         newEvent.setEventId(newId);
         newEvent.setEventName(eventName);
         newEvent.setEventDate(eventDate);
         newEvent.setEventTime(eventTime);

        return newEvent;
    }
}
//   public User saveUser(String userName, String password, String role) {
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