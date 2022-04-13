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

import javax.servlet.http.HttpSession;
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

//    //user profile page.
//    @RequestMapping(path ="userprofile",method= RequestMethod.GET)
//    public String displayUserProfile(){return "userProfile";}

    @RequestMapping(path = "/decision", method = RequestMethod.GET)
    public String privatePage(ModelMap model) throws UnauthorizedException {
        if (auth.userHasRole(new String[]{"admin", "user"})) {
            return "createEvent";
        } else {
            return "redirect:/login";
        }
    }

    @RequestMapping (path = "/createEvent", method = RequestMethod.GET)
    public String CreateEvent(ModelMap map) {
        map.addAttribute("event", new Event());
        return "createEvent";
    }

    @RequestMapping(path = "/createEvent", method = RequestMethod.POST)
    public String saveUserForumInput(@RequestParam String eventName, @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate eventDate,
                                     @RequestParam @DateTimeFormat(pattern = "HH:MM") LocalTime eventTime, @RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate decisionDate,
                                         HttpSession session) {

        Event eventInvite = new Event();

        eventInvite.setEventName(eventName);
        eventInvite.setEventDate(eventDate);
        eventInvite.setEventTime(eventTime);
        eventInvite.setDecisionDate(decisionDate);

        Event newEvent = eventDao.createNewEvent(eventName, eventDate, eventTime, decisionDate);
        session.setAttribute("event", newEvent);
        userDao.addUserToEvent((Long) session.getAttribute("id"), newEvent.getEventId());

        return "redirect:/login/addRestaurants";
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


    @RequestMapping(path = "/addRestaurants", method = RequestMethod.GET)
    public String displayAddRestaurant (ModelMap map, HttpSession session){
        List<Restaurant> restaurants = restaurantDao.getAllRestaurants();
        map.put("restaurants", restaurants);

        return "restaurantsCreateEvent";
    }

    @RequestMapping(path = "/addRestaurants", method = RequestMethod.POST)
    public String processAddRestaurantSearch(@RequestParam String searchRadio, @RequestParam String restaurantSearch/*,@RequestParam String cuisine*/,  ModelMap map) {

        if(searchRadio.equals("city")){
            List<Restaurant> restaurants = restaurantDao.getRestaurantByCity(restaurantSearch);
//           for(Restaurant restaurant : restaurants){
//               if(!restaurant.getTypeOfEstablishment().equals(cuisine)){
//                   restaurants.remove(restaurant);
//               }
//           }
            map.put("restaurants", restaurants);
        } else if(searchRadio.equals("zip")){
            List<Restaurant> restaurants = restaurantDao.getRestaurantByZipCode(restaurantSearch);
//            for(Restaurant restaurant : restaurants) {
//                if (!restaurant.getTypeOfEstablishment().equals(cuisine)) {
//                    restaurants.remove(restaurant);
//                }
//            }
            map.put("restaurants", restaurants);
        }
        return "redirect:/login/restaurantResults";
    }

    @RequestMapping(path = "/restaurantResults", method = RequestMethod.GET)
    public String displayAddRestaurantResults (ModelMap map){
        List<Restaurant> restaurants = (List<Restaurant>) map.get("restaurants");
        return "restaurantResults_private";
    }

    @RequestMapping(path = "/restaurantResults", method = RequestMethod.POST)
    public String processAddRestaurantResults(@RequestParam Long[] restaurantCheckbox, ModelMap map, HttpSession session) {
        List<Restaurant> restaurants = new ArrayList<>();
        Event event = (Event) session.getAttribute("event");
        for (int i = 0; i < restaurantCheckbox.length; i++) {
            Restaurant restaurant = restaurantDao.getRestaurantByRestaurantId(restaurantCheckbox[i]);
            restaurantDao.addRestaurantToEvent(event.getEventId(), restaurant.getRestaurantId());
            restaurants.add(restaurant);
        }
        map.put("restaurants", restaurants);

        return "addGuests";
    }

    @RequestMapping (path = "/addGuests", method = RequestMethod.GET)
    public String displayAddGuests() {
        return "addGuests";
    }

    @RequestMapping (path = "/addGuests", method = RequestMethod.POST)
    public String processAddGuests(@RequestParam String guestName, @RequestParam String email, HttpSession session, ModelMap map) {
        Guest guest = new Guest(guestName, email);
        Guest newGuest = guestDao.createNewGuest(guest);
        Event event = (Event) session.getAttribute("event");
        Long eventId = event.getEventId();
        List<Guest> guests = new ArrayList<Guest>();
        eventDao.addGuestToEvent(newGuest.getGuestId(), eventId);
        guests.add(newGuest);
        session.setAttribute("guests", guests);

        return "addMoreGuests";
    }
    // -------------------------------------------------------------------------

//    @RequestMapping (path = "/addMoreGuests", method = RequestMethod.GET)
//    public String displayAddMoreGuests(ModelMap map) {
//       List<Guest> guests = (List<Guest>) map.get("guests");
//
//        return "addMoreGuests";
//    }

    @RequestMapping (path = "/addMoreGuests", method = RequestMethod.POST)
    public String processAddMoreGuests(@RequestParam String guestName, @RequestParam String email, HttpSession session) {
        Guest guest = new Guest(guestName, email);
        Guest newGuest = guestDao.createNewGuest(guest);
        Event event = (Event) session.getAttribute("event");
        Long eventId = event.getEventId();
        List<Guest> guests = (List<Guest>) session.getAttribute("guests");
        eventDao.addGuestToEvent(newGuest.getGuestId(), eventId);
        guests.add(newGuest);
        session.setAttribute("guests", guests);

        return "addMoreGuests";
    }

    @RequestMapping(path = "/createEventConfirmation", method = RequestMethod.GET)
    public String displayCreateEventConfirmation(ModelMap map) {

        return "createEventConfirmation";
    }




//    public String displayFinalistRestaurants (ModelMap map){
//        List<Restaurant> restaurants = restaurantDao.getAllRestaurants();
//        map.put("restaurants", restaurants);
//
//        return "finalistRestaurants";
//    }



}
