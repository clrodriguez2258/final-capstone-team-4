package com.techelevator.model;

import org.springframework.stereotype.Component;

import java.util.List;

public interface RestaurantDao {

    public List<Restaurant> getAllRestaurants();

    public List<Restaurant> getRestaurantByCity(String city);

    public List<Restaurant> getRestaurantByZipCode(String zipCode);

    public List<Restaurant> getRestaurantsByEvent(Long eventId);

    public void addRestaurantToEvent(Long eventId, Long restaurantId);

    public void removeRestaurantFromEvent(Long eventId, Long restaurantId);

    public Restaurant getRestaurantByRestaurantId(Long restaurantId);

    public void updateRestaurantVoteUp(Long eventId, Long restaurantId);

    public void updateRestaurantVoteDown(Long eventId, Long restaurantId);

}