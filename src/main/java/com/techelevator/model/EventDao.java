package com.techelevator.model;

import org.bouncycastle.util.encoders.Base64;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

public interface EventDao {

    public Event createNewEvent(String eventName,LocalDate  eventDate, LocalTime eventTime, LocalDate decisionDate);
    public List<Event> getEventByGuestId(Long guestId);
    public Event getEventByEventId(Long eventId);
    public void addGuestToEvent(Long guestId, Long eventId);
    public void removeGuestFromEvent(Long guestId, Long eventId);
    public List<Event> getEventByUserId(Long userId);
    public List<Event> getAllEvents();
    public void finalEvent(Long eventId);
}


