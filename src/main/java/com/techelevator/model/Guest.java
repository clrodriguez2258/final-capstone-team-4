package com.techelevator.model;

public class Guest {

  private long guestId;
  private long eventId;
  private String guestName;
  private String attending;
  private String email;


  public long getGuestId() {
    return guestId;
  }

  public void setGuestId(long guestId) {
    this.guestId = guestId;
  }


  public long getEventId() {
    return eventId;
  }

  public void setEventId(long eventId) {
    this.eventId = eventId;
  }


  public String getGuestName() {
    return guestName;
  }

  public void setGuestName(String guestName) {
    this.guestName = guestName;
  }


  public String getAttending() {
    return attending;
  }

  public void setAttending(String attending) {
    this.attending = attending;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

}
