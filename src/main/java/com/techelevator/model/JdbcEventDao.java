package com.techelevator.model;

import com.techelevator.authentication.PasswordHasher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcEventDao implements EventDao {
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public JdbcEventDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public Event createNewEvent(String eventName, LocalDate eventDate, LocalTime eventTime, LocalDate decisionDate) {

        Event newEvent = new Event();
        Long newId = jdbcTemplate.queryForObject("INSERT INTO events (event_name, event_date, event_time,decision_date) values (?,?,?,?) RETURNING event_id", Long.class,
                eventName, eventDate, eventTime, decisionDate);
        newEvent.setEventId(newId);
        newEvent.setEventName(eventName);
        newEvent.setEventDate(eventDate);
        newEvent.setEventTime(eventTime);
        newEvent.setDecisionDate(decisionDate);

        return newEvent;
    }


    @Override
    public List<Event> getEventByGuestId(Long guestId) {
        List<Event> eventByGuest = new ArrayList<>();

        String sql = "SELECT * " +
                "FROM guest " +
                "LEFT JOIN guest_event ON guest.guest_id = guest_event.guest_id " +
                "WHERE guest_id = ?";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, guestId);
        while (results.next()) {
            eventByGuest.add(mapRowToEvent(results));
        }

        return eventByGuest;

    }

    public Event getEventByEventId(Long guestId) {
        Event eventByEventId = new Event();

        String sql = "SELECT * " +
                "FROM events " +
                "WHERE event_id = ?";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, guestId);
        while (results.next()) {
            eventByEventId = mapRowToEvent(results);
        }

        return eventByEventId;

    }



    private Event mapRowToEvent(SqlRowSet results) {

        Event event = new Event();
        event.setEventId(results.getLong("event_id"));
        event.setRestaurantId(results.getLong("restaurant_id"));
        event.setEventName(results.getString("event_name"));
        event.setEventDate(results.getDate("event_date").toLocalDate());
        event.setEventTime(results.getTime("event_time").toLocalTime());
        event.setDecisionDate(results.getDate("decision_date").toLocalDate());
    return event;
    }
}