package com.techelevator.model;

public class Event {

  private int eventId;
  private int userId;
  private int restaurantId;
  private String eventName;
  private java.sql.Time eventTime;
  private java.sql.Date eventDate;
  private java.sql.Date decisionDate;
  private java.sql.Time decisionTime;
  private boolean thumbsUp;
  private int thumbsUpCount;
  private boolean thumbsDown;
  private int thumbsDownCount;


  public int getEventId() {
    return eventId;
  }

  public void setEventId(int eventId) {
    this.eventId = eventId;
  }


  public int getUserId() {
    return userId;
  }

  public void setUserId(int userId) {
    this.userId = userId;
  }


  public int getRestaurantId() {
    return restaurantId;
  }

  public void setRestaurantId(int restaurantId) {
    this.restaurantId = restaurantId;
  }


  public String getEventName() {
    return eventName;
  }

  public void setEventName(String eventName) {
    this.eventName = eventName;
  }


  public java.sql.Time getEventTime() {
    return eventTime;
  }

  public void setEventTime(java.sql.Time eventTime) {
    this.eventTime = eventTime;
  }


  public java.sql.Date getEventDate() {
    return eventDate;
  }

  public void setEventDate(java.sql.Date eventDate) {
    this.eventDate = eventDate;
  }


  public java.sql.Date getDecisionDate() {
    return decisionDate;
  }

  public void setDecisionDate(java.sql.Date decisionDate) {
    this.decisionDate = decisionDate;
  }


  public java.sql.Time getDecisionTime() {
    return decisionTime;
  }

  public void setDecisionTime(java.sql.Time decisionTime) {
    this.decisionTime = decisionTime;
  }


  public boolean getThumbsUp() {
    return thumbsUp;
  }

  public void setThumbsUp(boolean thumbsUp) {
    this.thumbsUp = thumbsUp;
  }


  public int getThumbsUpCount() {
    return thumbsUpCount;
  }

  public void setThumbsUpCount(int thumbsUpCount) {
    this.thumbsUpCount = thumbsUpCount;
  }


  public boolean getThumbsDown() {
    return thumbsDown;
  }

  public void setThumbsDown(boolean thumbsDown) {
    this.thumbsDown = thumbsDown;
  }


  public int getThumbsDownCount() {
    return thumbsDownCount;
  }

  public void setThumbsDownCount(int thumbsDownCount) {
    this.thumbsDownCount = thumbsDownCount;
  }

}
