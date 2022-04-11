package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.UnauthorizedException;
import com.techelevator.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;


/**
 * AccountController
 */
@Controller
@RequestMapping("/login")
@SessionAttributes({"eventInvite", "guests", "restaurants"})
public class AccountController {
    @Autowired
    private AuthProvider auth;

    @Autowired
    private JdbcUserDao userDao;

    @Autowired
    private RestaurantDao restaurantDao;

    @Autowired
    private EventDao eventDao;

    @Autowired
    private GuestDao guestDao;

    @RequestMapping(path = "/decision", method = RequestMethod.GET)
    public String privatePage(ModelMap model) throws UnauthorizedException {
        if (auth.userHasRole(new String[]{"admin", "user"})) {
            return "decision";
        } else {
            //throw new UnauthorizedException();
            return "redirect:/login";
        }
    }

    @RequestMapping(path = "/restaurants", method = RequestMethod.GET)
    public String displayRestaurant (ModelMap map){
        List<Restaurant> restaurants = restaurantDao.getAllRestaurants();
        map.put("restaurants", restaurants);

        return "restaurants_private";
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

        return "restaurants_private";
    }

    @RequestMapping(path = "/restaurantResults", method = RequestMethod.GET)
    public String displayAddRestaurant (ModelMap map){
        List<Restaurant> restaurants = (List<Restaurant>) map.get("restaurants");

        return "restaurantResults_private";
    }

    @RequestMapping(path = "/restaurantResults", method = RequestMethod.POST)
    public String processAddRestaurant(@RequestParam Long[] restaurantCheckbox, ModelMap model) {

        for (int i = 0; i < restaurantCheckbox.length; i++) {
            if(restaurantCheckbox[i].equals(0)){
                continue;
            } else {
                //restaurantCheckbox[i]
                //Add into restaurant_event table
            }
        }


        return "restaurantResults_private";
    }

    @RequestMapping (path = "/createEvent", method = RequestMethod.GET)
    public String CreateEvent(ModelMap map) {
        map.addAttribute("eventInvite", new Event());
        return "createEvent";
    }

    @RequestMapping(path = "/createEvent", method = RequestMethod.POST)
    public String saveUserForumInput(@RequestParam String eventName, @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate eventDate,
                                     @RequestParam @DateTimeFormat(pattern = "HH:MM") LocalTime eventTime, @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate decisionDate,
                                     ModelMap map) {

        Event eventInvite = getEvents(map);

        eventInvite.setEventName(eventName);
        eventInvite.setEventDate(eventDate);
        eventInvite.setEventTime(eventTime);
        eventInvite.setDecisionDate(decisionDate);

        Event newEvent = eventDao.createNewEvent(eventName, eventDate, eventTime, decisionDate);
        map.addAttribute("event", newEvent);

        return "addGuests";
    }

    @RequestMapping (path = "/addGuests", method = RequestMethod.GET)
    public String displayAddGuests(ModelMap map) {
        return "addGuests";
    }

    @RequestMapping (path = "/addGuests", method = RequestMethod.POST)
    public String processAddGuests(@RequestParam String guestName, @RequestParam String email, ModelMap map) {
        Guest guest = new Guest(guestName, email);
        Guest newGuest = guestDao.createNewGuest(guest);
        //Add into guest_event table - might need to get event from model attribute
        List<Guest> guests = new ArrayList<>();
        guests.add(newGuest);
        map.addAttribute("guests", guests);

        return "addMoreGuests";
    }

    @RequestMapping (path = "/addMoreGuests", method = RequestMethod.GET)
    public String displayAddMoreGuests(ModelMap map) {
       List<Guest> guests = (List<Guest>) map.get("guests");

        return "addMoreGuests";
    }

    @RequestMapping (path = "/addMoreGuests", method = RequestMethod.POST)
    public String processAddMoreGuests(@RequestParam String guestName, @RequestParam String email, ModelMap map) {
        Guest guest = new Guest(guestName, email);
        Guest newGuest = guestDao.createNewGuest(guest);
        //Add into guest_event table - might need to get event from model attribute
        List<Guest> guests = (List<Guest>) map.get("guests");
        guests.add(newGuest);
        map.replace("guests", guests);
        Event event = (Event) map.get("event");

        return "addMoreGuests";
    }

    @RequestMapping(path = "/createEventConfirmation", method = RequestMethod.GET)
    public String displayCreateEventConfirmation(ModelMap map) {

        return "createEventConfirmation";
    }

    private Event getEvents(ModelMap map) {
        return (Event) map.get("eventInvite");
    }


}