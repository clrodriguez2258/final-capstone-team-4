package com.techelevator.model;

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
public class JdbcGuestDao implements GuestDao {
    private Long guestId;
    private String guestName;
    private String email;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public JdbcGuestDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Guest> getGuestsByEvent(Long eventId){
        List<Guest> guestsByEvent = new ArrayList<>();
        String sql = "SELECT * " +
                "FROM guest " +
                "LEFT JOIN guest_event ON guest.guest_id = guest_event.guest_id " +
                "WHERE event_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, eventId);
        while (results.next()){
            guestsByEvent.add(mapRowToGuest(results));
        }

        return guestsByEvent;
    }

    public void updateGuestVoted(Long guestId, Long eventId){
        String sqlUpdateGuestVoted = "UPDATE guest_event  SET voted = true WHERE guest_id = ? AND event_id =? ;";
        jdbcTemplate.update(sqlUpdateGuestVoted, guestId, eventId);
    }

    public boolean getDidGuestVote(Long guestId){
        String sql = "SELECT * FROM guest_event WHERE guest_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, guestId);

        Boolean didVote = true;
        if(results.next()){
            didVote = results.getBoolean("voted");
        }
        return didVote;
    }

    @Override
    public Guest createNewGuest(Guest guest) {
        Guest newGuest = new Guest();
        Long newId =  jdbcTemplate.queryForObject("INSERT INTO guest (guest_name, email) values (?,?) RETURNING guest_id", Long.class,
                guest.getGuestName(), guest.getEmail());
        newGuest.setGuestId(newId);
        newGuest.setGuestName(guest.getGuestName());
        newGuest.setEmail(guest.getEmail());

        return newGuest;
    }

    @Override
    public String getGuestNameById(Long guestId) {
        String guestName = "";
        String sql = "SELECT * FROM guest WHERE guest_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, guestId);
        if(results.next()){
            guestName = results.getString("guest_name");
        }
        return guestName;
    }

    private Guest mapRowToGuest(SqlRowSet results){
        Guest guest = new Guest();
        guest.setGuestId(results.getLong("guest_id"));
        guest.setGuestName(results.getString("guest_name"));
        guest.setEmail(results.getString("email"));
        return guest;
    }
}
