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

        String sql = "SELECT * " +
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

        String sql =  "SELECT * " +
                "FROM restaurant " +
                "WHERE zipcode = ? ";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, zipCode);
        while (results.next()){
            restaurantsByZipCode.add(mapRowToRestaurant(results));

        }

        return restaurantsByZipCode;
    }

    @Override
    public List<Restaurant> getRestaurantsByEvent(Long eventId){
        List<Restaurant> restaurantsByEvent = new ArrayList<>();
        String sql = "SELECT * " +
                "FROM restaurant " +
                "LEFT JOIN restaurant_event ON restaurant.restaurant_id = restaurant_event.restaurant_id " +
                "WHERE event_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, eventId);
        while (results.next()){
            restaurantsByEvent.add(mapRowToRestaurant(results));
        }

        return restaurantsByEvent;
    }


    public Restaurant getRestaurantByRestaurantId(Long restaurantId) {
        Restaurant restaurantByRestaurantId = new Restaurant();

        String sql = "SELECT * " +
                "FROM restaurant " +
                "WHERE restaurant_id = ?";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, restaurantId);
        while(results.next()){
            restaurantByRestaurantId = (mapRowToRestaurant(results));
        }

        return restaurantByRestaurantId;

    }

//    public void updateRestaurantVoteUpTEST(Long eventId,Long restaurantId){
//        int thumbsUpCount = 0;
//        String sql = "SELECT * FROM restaurant_event WHERE restaurant_id =? AND event_id = ?;";
//        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, restaurantId, eventId);
//
//        while (results.next()){
//           thumbsUpCount = (int) results.getLong("thumbs_up_count");
//           thumbsUpCount ++;
//
//        }
//        String sqlAddRestaurantToEvent = "UPDATE restaurant_event  SET thumbs_up_count = ? WHERE restaurant_id = ? AND event_id =? ;";
//        jdbcTemplate.update(sqlAddRestaurantToEvent, thumbsUpCount, eventId, restaurantId);
//    }

    public void updateRestaurantVoteUp(Long eventId, Long restaurantId){
        String sqlAddRestaurantToEvent = "UPDATE restaurant_event  SET thumbs_up_count = thumbs_up_count + 1 WHERE restaurant_id = ? AND event_id =? ;";
        jdbcTemplate.update(sqlAddRestaurantToEvent, restaurantId, eventId);
    }

    public void updateRestaurantVoteDown( Long eventId,Long restaurantId){
        String sqlAddRestaurantToEvent = "UPDATE restaurant_event  SET thumbs_down_count = thumbs_down_count + 1 WHERE restaurant_id = ? AND event_id =? ;";
        jdbcTemplate.update(sqlAddRestaurantToEvent, restaurantId, eventId);
    }






// UPDATING RELATIONAL TABLES RESTAURANT_EVENT
    public void addRestaurantToEvent(Long eventId, Long restaurantId){
        String sqlAddRestaurantToEvent = "INSERT INTO restaurant_event (event_id, restaurant_id) VALUES (?,?);";
        jdbcTemplate.update(sqlAddRestaurantToEvent, eventId, restaurantId);
    }

    public void removeRestaurantFromEvent(Long eventId, Long restaurantId){
        String sqlRemoveGuestFromEvent = "DELETE FROM restaurant_event WHERE event_id = ? AND restaurant_id = ?;";
        jdbcTemplate.update(sqlRemoveGuestFromEvent, eventId, restaurantId);
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