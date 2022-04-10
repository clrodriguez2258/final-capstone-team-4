package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.UnauthorizedException;

import com.techelevator.model.JdbcRestaurantDao;
import com.techelevator.model.Restaurant;
import com.techelevator.model.RestaurantDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * SiteController
 */
@Controller
public class SiteController {
    @Autowired
    private AuthProvider auth;
    @Autowired
    private RestaurantDao restaurantDao;

    @RequestMapping(path = "/private", method = RequestMethod.GET)
    public String privatePage(ModelMap model) throws UnauthorizedException {
        if (auth.userHasRole(new String[]{"admin", "user"})) {
            return "private";
        } else {
            throw new UnauthorizedException();
        }
    }

    @RequestMapping(path = "/decisionPage", method = RequestMethod.GET)
    public String decisionPage(){
        return "decisionPage";
    }

//    @RequestMapping(path = "/createEvent", method = RequestMethod.GET)
//    public String createEventPage(){
//        return "createEvent";
//    }

    @RequestMapping(path = "/about", method = RequestMethod.GET)
    public String aboutPage() throws UnauthorizedException {
        return "about";
    }

    @RequestMapping(path = "/restaurants", method = RequestMethod.GET)
    public String displayRestaurant (ModelMap map){
        List<Restaurant> restaurants = restaurantDao.getAllRestaurants();
        map.put("restaurants", restaurants);

        return "restaurants";
    }

    @RequestMapping(path = "/restaurants", method = RequestMethod.POST)
    public String processRestaurantSearch(@RequestParam String searchRadio, @RequestParam String restaurantSearch, ModelMap model) {

        if(searchRadio.equals("city")){
            List<Restaurant> restaurants = restaurantDao.getRestaurantByCity(restaurantSearch);
            model.put("restaurants", restaurants);
        } else if(searchRadio.equals("zip")){
            List<Restaurant> restaurants = restaurantDao.getRestaurantByZipCode(restaurantSearch);
            model.put("restaurants", restaurants);
        }

        return "restaurants";
    }

    @RequestMapping(path = "eventVote", method = RequestMethod.GET)
    public String displayEventVotingPage(@RequestParam Long eventId, ModelMap modelHolder){
        List<Restaurant> restaurants = restaurantDao.getRestaurantsByEvent(eventId);
        modelHolder.put("restaurants", restaurants);

        return "eventVote";
    }
}
