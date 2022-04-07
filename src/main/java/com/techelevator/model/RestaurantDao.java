package com.techelevator.model;

import java.util.List;

public interface RestaurantDao {

    public List<Restaurant> getAllRestaurants();
     public List<Restaurant> getRestaurantByCity(String city);
    public List<Restaurant> getRestaurantByZipCode(String zipCode);

}
