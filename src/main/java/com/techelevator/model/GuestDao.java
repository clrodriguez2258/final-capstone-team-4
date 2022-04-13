package com.techelevator.model;

import javax.sql.DataSource;
import java.util.List;

public interface GuestDao {
    public List<Guest> getGuestsByEvent(Long eventId);
    public Guest createNewGuest(Guest guest);
    public void updateGuestVoted (Long guestId, Long eventId);
}
