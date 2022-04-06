package com.techelevator.model;

import com.techelevator.authentication.PasswordHasher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.time.LocalTime;

public class JdbcEventDao implements EventDao{
    private JdbcTemplate jdbcTemplate;
    @Autowired
    public JdbcEventDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public Event saveEvent(String eventName, java.sql.Date  eventDate, java.sql.Time eventTime) {

        Event newEvent = new Event();
         Long newId =  jdbcTemplate.queryForObject("INSERT INTO events (event_name, event_date, event_time) values (?,?,?) RETURNING event_id", Long.class,
                                        eventName,eventDate,eventTime);
         newEvent.setEventId(newId);
         newEvent.setEventName(eventName);
         newEvent.setEventDate(eventDate);
         newEvent.setEventTime(eventTime);

        return newEvent;
    }
}
