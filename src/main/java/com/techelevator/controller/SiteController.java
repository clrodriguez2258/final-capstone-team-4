package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.UnauthorizedException;

import com.techelevator.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.time.LocalDate;
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
    @Autowired
    private UserDao userDao;
    @Autowired
    private EventDao eventDao;
    @Autowired
    private GuestDao guestDao;

    @RequestMapping(method = RequestMethod.GET, path = {"/", "/index"})
    public String index(ModelMap modelHolder) {
        modelHolder.put("user", auth.getCurrentUser());
        modelHolder.remove("restaurants");
        return "index";
    }

    @RequestMapping(path = "/logoff", method = RequestMethod.POST)
    public String logOff() {
        auth.logOff();
        return "redirect:/";
    }

    @RequestMapping(path = "/register", method = RequestMethod.GET)
    public String register(ModelMap modelHolder) {
        if (!modelHolder.containsAttribute("user")) {
            modelHolder.put("user", new User());
        }
        return "register";
    }

    @RequestMapping(path = "/register", method = RequestMethod.POST)
    public String processRegistration(@Valid @ModelAttribute("user") User user, BindingResult result, RedirectAttributes flash) {
        if (!user.isPasswordMatching()) {
            result.addError(new FieldError("user", "password", ""));
        }

        if (!userDao.getUserWithEmail(user.getUsername().toUpperCase()).isEmpty()) {
            result.addError((new FieldError("user", "username", "User already exists")));
        }

        if (result.hasErrors()) {
            flash.addFlashAttribute("user", user);
            flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
            flash.addFlashAttribute("message", "Please fix the following errors:");

            return "redirect:/register";
        }

        auth.register(user.getUsername(), user.getPassword(), user.getRole());
        return "redirect:/login";
    }

    @RequestMapping(path = "/login", method = RequestMethod.GET)
    public String login(ModelMap modelHolder) {

        return "login";
    }

    @RequestMapping(path = "/login", method = RequestMethod.POST)
    public String login(@RequestParam String username, @RequestParam String password, RedirectAttributes flash, HttpSession session) {
        if (auth.signIn(username, password)) {
            session.setAttribute("id", userDao.getUserIdWithEmail(username));
            return "redirect:/login/decision";
        } else {
            flash.addFlashAttribute("message", "Login Invalid");
            return "redirect:/login";
        }
    }

    @RequestMapping(path = "/about", method = RequestMethod.GET)
    public String aboutPage() throws UnauthorizedException {
        return "about";
    }

    @RequestMapping(path = "/restaurants", method = RequestMethod.GET)
    public String displayRestaurant(ModelMap map) {
        List<Restaurant> restaurants = restaurantDao.getAllRestaurants();
        map.put("restaurants", restaurants);

        return "restaurants";
    }

    @RequestMapping(path = "/restaurants", method = RequestMethod.POST)
    public String processRestaurantSearch(@RequestParam String searchRadio, @RequestParam String restaurantSearch, ModelMap model) {

        if (searchRadio.equals("city")) {
            List<Restaurant> restaurants = restaurantDao.getRestaurantByCity(restaurantSearch);
            model.put("restaurants", restaurants);
        } else if (searchRadio.equals("zip")) {
            List<Restaurant> restaurants = restaurantDao.getRestaurantByZipCode(restaurantSearch);
            model.put("restaurants", restaurants);
        }

        return "restaurants";
    }

    @RequestMapping(path = "/eventVote", method = RequestMethod.GET)
    public String displayEventVote(@RequestParam Long guestId, @RequestParam Long eventId, ModelMap map, HttpSession session) {
        List<Restaurant> restaurants = restaurantDao.getRestaurantsByEvent(eventId);
        Event event = eventDao.getEventByEventId(eventId);
        map.addAttribute("restaurants", restaurants);
        session.setAttribute("guestId", guestId);
        session.setAttribute("eventId", eventId);
        if (event.getDecisionDate().isBefore(LocalDate.now())) {
            return "redirect:/eventLinkExpired";
        } else if(guestDao.getDidGuestVote(guestId)){
            return "redirect:/tooManyVotes";
        }
        return "eventVote";
    }

    @RequestMapping(path = "/eventVote", method = RequestMethod.POST)
    public String processEventVote(@RequestParam Long restaurantId, HttpSession session) {
        guestDao.updateGuestVoted((Long) session.getAttribute("guestId"), (Long) session.getAttribute("eventId"));
        restaurantDao.updateRestaurantVoteUp((Long) session.getAttribute("eventId"), restaurantId);
//        session.removeAttribute("guestId");
//        session.removeAttribute("eventId");
//        session.removeAttribute("guestName");
        return "votingConfirmation";
    }

    // RETURN LINK EXPIRED PAGE
    @RequestMapping(path = "/eventLinkExpired", method = RequestMethod.GET)
    public String displayDecisionLinkExpired() {
        return "eventLinkExpired";
    }

    @RequestMapping(path = "/tooManyVotes", method = RequestMethod.GET)
    public String displayGuestTooManyVotes() {
        return "tooManyVotes";
    }

}

