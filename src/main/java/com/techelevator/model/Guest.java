package com.techelevator.model;

import java.time.LocalDate;
import java.time.LocalTime;

public class Guest {

  private Long guestId;
  private Long eventId;
  private String guestName;
  private boolean attending;
  private String email;

  public Guest(String guestName, String email) {
    this.guestName = guestName;
    this.email = email;
  }

  public Guest(){

  }

  public Long getGuestId() {
    return guestId;
  }

  public void setGuestId(Long guestId) {
    this.guestId = guestId;
  }


  public Long getEventId() {
    return eventId;
  }

  public void setEventId(Long eventId) {
    this.eventId = eventId;
  }


  public String getGuestName() {
    return guestName;
  }

  public void setGuestName(String guestName) {
    this.guestName = guestName;
  }


  public boolean getAttending() {
    return attending;
  }

  public void setAttending(boolean attending) {
    this.attending = attending;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

}
