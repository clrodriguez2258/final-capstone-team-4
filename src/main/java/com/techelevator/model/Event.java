package com.techelevator.model;

import java.time.LocalDate;

public class Event {

  private Long eventId;
  private int userId;
  private int restaurantId;
  private String eventName;
  private LocalDate eventTime;
  private LocalDate eventDate;
  private LocalDate decisionDate;
  private LocalDate decisionTime;
  private boolean thumbsUp;
  private int thumbsUpCount;
  private boolean thumbsDown;
  private int thumbsDownCount;

  public Event(String eventName, LocalDate eventDate, LocalDate eventTime) {
    this.eventName = eventName;
    this.eventDate = eventDate;
    this.eventTime = eventTime;
  }

  public Event() {

  }

  public Long getEventId() {
    return eventId;
  }

  public void setEventId(Long eventId) {
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


  public LocalDate getEventTime() {
    return eventTime;
  }

  public void setEventTime(LocalDate eventTime) {
    this.eventTime = eventTime;
  }


  public LocalDate getEventDate() {
    return eventDate;
  }

  public void setEventDate(LocalDate eventDate) {
    this.eventDate = eventDate;
  }


  public LocalDate getDecisionDate() {
    return decisionDate;
  }

  public void setDecisionDate(LocalDate decisionDate) {
    this.decisionDate = decisionDate;
  }


  public LocalDate getDecisionTime() {
    return decisionTime;
  }

  public void setDecisionTime(LocalDate decisionTime) {
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
