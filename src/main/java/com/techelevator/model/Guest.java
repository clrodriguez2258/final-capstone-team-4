package com.techelevator.model;

public class Guest {

  private int guestId;
  private int eventId;
  private String guestName;
  private boolean attending;
  private String email;


  public int getGuestId() {
    return guestId;
  }

  public void setGuestId(int guestId) {
    this.guestId = guestId;
  }


  public int getEventId() {
    return eventId;
  }

  public void setEventId(int eventId) {
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
