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

    public List<Event> getAllEvents() {
        List <Event>  events = new ArrayList<>();
        String sql = "Select * "+
                "from events ";

        SqlRowSet  results = jdbcTemplate.queryForRowSet(sql);
        while(results.next()){

            events.add(mapRowToEvent(results));
        }

        return events;


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


    @Override
    public List<Event> getEventByUserId(Long userId) {
        List<Event> eventByUser = new ArrayList<>();

        String sql = "SELECT * " +
                "FROM events " +
                "JOIN user_event ON events.event_id = user_event.event_id " +
                "WHERE user_id = ?";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        while (results.next()) {
            eventByUser.add(mapRowToEvent(results));
        }

        return eventByUser;

    }
    public Event getEventByEventId(Long guestId) {
        Event event = new Event();

        String sql = "SELECT * " +
                "FROM events " +
                "WHERE event_id = ?";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, guestId);

        while(results.next()) {
            event = mapRowToEvent(results);
        }

        return event;

    }


// UPDATING RELATIONAL TABLES GUEST_EVENT
    public void addGuestToEvent(Long guestId, Long eventId){
        String sqlAddGuestToEvent = "INSERT INTO guest_event (guest_id, event_id) VALUES (?,?)";
        jdbcTemplate.update(sqlAddGuestToEvent, guestId, eventId);
    }

    public void removeGuestFromEvent(Long guestId, Long eventId){
        String sqlRemoveGuestFromEvent = "DELETE FROM guest_event WHERE guest_id =? AND event_id = ?";
        jdbcTemplate.update(sqlRemoveGuestFromEvent, guestId, eventId);
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