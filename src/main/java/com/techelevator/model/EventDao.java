package com.techelevator.model;

import org.bouncycastle.util.encoders.Base64;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.LocalTime;

public interface EventDao {

    public Event createNewEvent(String eventName,LocalDate  eventDate, LocalDate eventTime);


}


