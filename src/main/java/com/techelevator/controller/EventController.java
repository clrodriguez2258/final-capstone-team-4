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

    @RequestMapping(path ="/userprofile",method= RequestMethod.GET)
    public String displayUserProfile(ModelMap map, HttpSession session) {
        Long Id = (Long) session.getAttribute("id");
        List<Event> allEvents = eventDao.getEventByUserId(Id);
        map.put("allEvents", allEvents);
        if (auth.userHasRole(new String[]{"admin", "user"})) {
            return "userProfile";
        } else {
            return "redirect:/login";
        }
    }

    @RequestMapping(path = "/finalist", method = RequestMethod.GET)
    public String displayFinalistRestaurants (HttpServletRequest request, ModelMap map){
        Long eventId = Long.parseLong(request.getParameter("eventId"));
        eventDao.finalEvent(eventId);
        Event event = eventDao.getEventByEventId(eventId);
        request.setAttribute("event", event);
        Restaurant finalRestaurant = restaurantDao.getRestaurantByRestaurantId(event.getRestaurantId());
        map.addAttribute("finalRestaurant", finalRestaurant);

        return "finalistRestaurants";
    }

}
