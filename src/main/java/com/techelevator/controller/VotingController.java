package com.techelevator.controller;

import com.techelevator.model.Restaurant;
import com.techelevator.model.RestaurantDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@Controller
public class VotingController {
    @Autowired
    private RestaurantDao restaurantDao;

    @RequestMapping(path = "eventVote", method = RequestMethod.GET)
    public String displayEventVotingPage(@RequestParam Long eventId, ModelMap modelHolder){
        List<Restaurant> restaurants = restaurantDao.getRestaurantsByEvent(eventId);
        modelHolder.put("restaurants", restaurants);

        return "eventVote";
    }


}
