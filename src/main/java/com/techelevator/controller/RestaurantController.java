package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.UnauthorizedException;

import com.techelevator.model.Restaurant;
import com.techelevator.model.RestaurantDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class RestaurantController {

//    @Autowired
//    RestaurantDao restaurantDao;
//
//
//    @RequestMapping(path = "/viewRestaurants")
//        public String displayRestaurant (ModelMap map){
//            List<Restaurant> products = restaurantDao.getAllRestaurants();
//            map.put("restaurants", restaurants);
//
//
//            return "displayRestaurants";
//
//        }


}



