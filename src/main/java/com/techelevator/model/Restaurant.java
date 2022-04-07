package com.techelevator.model;

import java.time.LocalDateTime;
import java.time.LocalTime;

public class Restaurant {
    private String restaurantName;
    private String street;
    private String city;
    private String state;
    private String zipCode;
    private int rating;
    private String image;
    private String website;
    private String phoneNumber;
    private boolean callToOrder;
    private String typeOfEstablishment;
    private LocalTime openTime;
    private LocalTime closeTime;

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

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
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

    public boolean isCallToOrder() {
        return callToOrder;
    }

    public void setCallToOrder(boolean callToOrder) {
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
