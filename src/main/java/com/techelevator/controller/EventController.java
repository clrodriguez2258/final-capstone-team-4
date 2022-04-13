package com.techelevator.controller;


import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.UnauthorizedException;
import com.techelevator.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
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
public class EventController {
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


    //user profile page.
    @RequestMapping(path ="profile",method= RequestMethod.GET)
    public String displayUserEvents(HttpServletRequest request){
//        Long eventId = Long.parseLong(request.getParameter("eventId"));
        Long userId = Long.parseLong(request.getParameter("id"));
        List<Event> events = eventDao.getEventByUserId(userId);
        request.setAttribute("events", events);

//        List<Restaurant> restaurants = restaurantDao.getRestaurantsByEvent(eventId);
//        map.put("events",events);
//        map.put("restaurants", restaurants);
//
//

        return "userProfile";}


    @RequestMapping(path ="userprofile",method= RequestMethod.GET)
    public String displayUserProfile(ModelMap map, HttpSession session){
        session.getAttribute("id");
        List<Event> allEvents = eventDao.getAllEvents();
        map.put("allEvents", allEvents);


        return "userProfile";

    }

    @RequestMapping(path = "/finalist", method = RequestMethod.GET)

    public String displayFinalistRestaurants (HttpServletRequest request){
        Long eventId = Long.parseLong(request.getParameter("eventId"));
        Event event = eventDao.getEventByEventId(eventId);
        request.setAttribute("event", event);

        return "finalistRestaurants";
    }

    //user profile page.
//    @RequestMapping(path ="userprofile",method= RequestMethod.GET)
//    public String displayUserProfile(@RequestParam int userId, @RequestParam Long eventId, ModelMap map){
//        List<Event> events = eventDao.getEventByUserId(userId);
//        List<Restaurant> restaurants = restaurantDao.getRestaurantsByEvent(eventId);
//        map.put("events",events);
//        map.put("restaurants", restaurants);
//
//
//
//        return "userProfile";}



}
