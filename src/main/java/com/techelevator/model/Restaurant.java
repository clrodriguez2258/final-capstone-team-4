package com.techelevator.model;

import java.time.LocalDateTime;
import java.time.LocalTime;

public class Restaurant {
    private Long restaurant_id;
    private String restaurantName;
    private String street;
    private String city;
    private String state;
    private String zipCode;
//    private int rating;
    private Integer rating;
    private String image;
    private String website;
    private String phoneNumber;
//    private boolean callToOrder;
    private Boolean callToOrder;
    private String typeOfEstablishment;
    private LocalTime openTime;
    private LocalTime closeTime;
//    private boolean petFriendly;
    private Boolean petFriendly;
//    private int affordability;
    private Integer affordability;
//    private int capacity;
    private Integer capacity;
    private String dressCode;
//    private boolean dineIn;
    private Boolean dineIn;

    public Boolean isPetFriendly() {
        return petFriendly;
    }

    public void setPetFriendly(Boolean petFriendly) {
        this.petFriendly = petFriendly;
    }

    public Integer getAffordability() {
        return affordability;
    }

    public void setAffordability(Integer affordability) {
        this.affordability = affordability;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    public String getDressCode() {
        return dressCode;
    }

    public void setDressCode(String dressCode) {
        this.dressCode = dressCode;
    }

    public Boolean isDineIn() {
        return dineIn;
    }

    public void setDineIn(Boolean dineIn) {
        this.dineIn = dineIn;
    }

    public Long getRestaurantId() {
        return restaurant_id;
    }

    public void setRestaurantId(Long restaurant_id) {
        this.restaurant_id = restaurant_id;
    }

    public String getTypeOfEstablishment() {
        return typeOfEstablishment;
    }

    public void setTypeOfEstablishment(String typeOfEstablishment) {
        this.typeOfEstablishment = typeOfEstablishment;
    }

    public LocalTime getOpenTime() {
        return openTime;
    }

    public void setOpenTime(LocalTime openTime) {
        this.openTime = openTime;
    }

    public LocalTime getCloseTime() {
        return closeTime;
    }

    public void setCloseTime(LocalTime closeTime) {
        this.closeTime = closeTime;
    }

    public String getRestaurantName() {
        return restaurantName;
    }

    public void setRestaurantName(String restaurantName) {
        this.restaurantName = restaurantName;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Boolean isCallToOrder() {
        return callToOrder;
    }

    public void setCallToOrder(Boolean callToOrder) {
        this.callToOrder = callToOrder;
    }

    public boolean isOpen() {
        LocalTime compareTime = LocalTime.now();
        if(compareTime.isAfter(openTime) && compareTime.isBefore(closeTime)){
            return true;
        }
        return false;
    }

}
