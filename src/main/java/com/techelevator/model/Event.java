package com.techelevator.model;

public class Event {

  private long eventId;
  private long userId;
  private long restaurantId;
  private String eventName;
  private java.sql.Time eventTime;
  private java.sql.Date eventDate;
  private java.sql.Date decisionDate;
  private java.sql.Time decisionTime;
  private String thumbsUp;
  private long thumbsUpCount;
  private String thumbsDown;
  private long thumbsDownCount;


  public long getEventId() {
    return eventId;
  }

  public void setEventId(long eventId) {
    this.eventId = eventId;
  }


  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }


  public long getRestaurantId() {
    return restaurantId;
  }

  public void setRestaurantId(long restaurantId) {
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


  public String getThumbsUp() {
    return thumbsUp;
  }

  public void setThumbsUp(String thumbsUp) {
    this.thumbsUp = thumbsUp;
  }


  public long getThumbsUpCount() {
    return thumbsUpCount;
  }

  public void setThumbsUpCount(long thumbsUpCount) {
    this.thumbsUpCount = thumbsUpCount;
  }


  public String getThumbsDown() {
    return thumbsDown;
  }

  public void setThumbsDown(String thumbsDown) {
    this.thumbsDown = thumbsDown;
  }


  public long getThumbsDownCount() {
    return thumbsDownCount;
  }

  public void setThumbsDownCount(long thumbsDownCount) {
    this.thumbsDownCount = thumbsDownCount;
  }

}
