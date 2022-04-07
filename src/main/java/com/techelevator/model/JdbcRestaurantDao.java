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

        String sql = "SELECT * " +
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


    private Restaurant mapRowToRestaurant(SqlRowSet results){

        Restaurant restaurant = new Restaurant();
        restaurant.setRestaurantId(results.getLong("restaurant_id"));
        restaurant.setRestaurantName(results.getString("restaurant_name"));
        restaurant.setStreet(results.getString("street"));
        restaurant.setCity(results.getString("city"));
        restaurant.setState(results.getString("state"));
        restaurant.setZipCode(results.getString("zipcode"));
        restaurant.setRating(results.getInt("rating"));
        restaurant.setImage(results.getString("image_name"));
        restaurant.setWebsite(results.getString("website"));
        restaurant.setPhoneNumber(results.getString("phone_number"));
        restaurant.setCallToOrder(results.getBoolean("call_to_order"));
        restaurant.setOpenTime(results.getTime("open_time").toLocalTime());
        restaurant.setCloseTime(results.getTime("close_time").toLocalTime());
        restaurant.setTypeOfEstablishment(results.getString("cuisine"));
        restaurant.setPetFriendly(results.getBoolean("pet_friendly"));
        restaurant.setAffordability(results.getInt("affordability"));
        restaurant.setCapacity(results.getInt("capacity"));
        restaurant.setDressCode(results.getString("dresscode"));
        restaurant.setDineIn(results.getBoolean("dine_in"));



        return restaurant;
    }
}