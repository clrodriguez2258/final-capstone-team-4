package com.techelevator.model;

import org.springframework.stereotype.Component;

import java.util.List;

public interface RestaurantDao {

    public List<Restaurant> getAllRestaurants();
    public List<Restaurant> getRestaurantByCity(String city);
    public List<Restaurant> getRestaurantByZipCode(String zipCode);
    public List<Restaurant> getRestaurantsByEvent(Long eventId);
}
