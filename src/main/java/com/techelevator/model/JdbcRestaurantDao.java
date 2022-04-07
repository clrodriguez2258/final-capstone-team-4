package com.techelevator.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcRestaurantDao implements RestaurantDao {


    private JdbcTemplate jdbcTemplate;

    @Autowired
    public JdbcRestaurantDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Restaurant> getAllRestaurants() {
        List<Restaurant> allRestaurants = new ArrayList<>();

        String sql = "SELECT restaurant_name, cuisine, street, city, state, zipcode, open_time, close_time, image_name " +
                "FROM restaurant";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);

        while (results.next()){
            allRestaurants.add(mapRowToRestaurant(results));

        }


        return allRestaurants;
    }

    @Override
    public List<Restaurant> getRestaurantByCity(String city) {
        List<Restaurant> restaurantsByCity = new ArrayList<>();

        String sql = "SELECT restaurant_name, cuisine, street, city, state, zipcode, open_time, close_time, image_name " +
                "FROM restaurant " +
                "WHERE city = ? ";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, city);


        while (results.next()){
            restaurantsByCity.add(mapRowToRestaurant(results));

        }

        return restaurantsByCity;
    }

    @Override
    public List<Restaurant> getRestaurantByZipCode(String zipCode) {

        List<Restaurant> restaurantsByZipCode = new ArrayList<>();

        String sql =  "SELECT restaurant_name, cuisine, street, city, state, zipcode, open_time, close_time, image_name " +
                "FROM restaurant " +
                "WHERE zipcode = ? ";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, zipCode);
        while (results.next()){
            restaurantsByZipCode.add(mapRowToRestaurant(results));

        }

        return restaurantsByZipCode;
    }


    private Restaurant mapRowToRestaurant(SqlRowSet rowSet){

        Restaurant restaurant = new Restaurant();
        restaurant.setRestaurant_id(rowSet.getLong("restaurant_id"));
        restaurant.setRestaurantName(rowSet.getString("restaurant_name"));
        restaurant.setStreet(rowSet.getString("street"));
        restaurant.setCity(rowSet.getString("city"));
        restaurant.setState(rowSet.getString("state"));
        restaurant.setZipCode(rowSet.getString("zipcode"));
        restaurant.setRating(rowSet.getInt("rating"));
        restaurant.setImage(rowSet.getString("image_name"));
        restaurant.setWebsite(rowSet.getString("website"));
        restaurant.setPhoneNumber(rowSet.getString("phone_number"));
        restaurant.setCallToOrder(rowSet.getBoolean("call_to_order"));
        restaurant.setOpenTime(rowSet.getTime("open_time").toLocalTime());
        restaurant.setCloseTime(rowSet.getTime("close_time").toLocalTime());
        restaurant.setTypeOfEstablishment(rowSet.getString("cuisine"));
        restaurant.setPetFriendly(rowSet.getBoolean("pet_friendly"));
        restaurant.setAffordability(rowSet.getInt("affordability"));
        restaurant.setCapacity(rowSet.getInt("capacity"));
        restaurant.setDressCode(rowSet.getString("dresscode"));
        restaurant.setDineIn(rowSet.getBoolean("dine_in"));



        return restaurant;
    }
}
