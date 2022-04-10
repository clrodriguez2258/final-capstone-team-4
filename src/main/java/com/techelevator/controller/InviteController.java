package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.model.Event;
import com.techelevator.model.JdbcEventDao;
import com.techelevator.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.time.LocalDate;
import java.time.LocalTime;


/**
 * Invite Controller
 */
@Controller
public class InviteController {
    @Autowired
    private AuthProvider auth;

    @Autowired
    JdbcEventDao eventDao;


//THIS METHOD RETURNS THE INITIAL PAGE
    @RequestMapping(method = RequestMethod.GET, path = "/createEvent")
    public String CreateEventTEST() {
        return "createEvent";
    }


    //THIS METHOD WILL ALLOW POSTS INTO THE FORM


    /* @RequestMapping(path="/createEvent", method = RequestMethod.POST)
    public String createEventFlash (@RequestParam String eventName, @RequestParam LocalDate eventDate,
                                    @RequestParam LocalDate eventTime, RedirectAttributes flash){
        if (eventDao.createNewEvent(eventName, eventDate, eventTime)){
            return "redirect:"
        }
    }*/



// BASIC REQUEST MAPPING WITHOUT SESSION.
    @RequestMapping(path = "/createEvent", method = RequestMethod.POST)
    public String saveUserForumInput(@RequestParam String eventName, @RequestParam @DateTimeFormat(pattern="yyyy-MM-dd")LocalDate eventDate,
                                     @RequestParam @DateTimeFormat(pattern="HH:MM") LocalTime eventTime, @RequestParam @DateTimeFormat(pattern="yyyy-MM-dd") LocalDate decisionDate) {

        eventDao.createNewEvent(eventName, eventDate, eventTime, decisionDate);

        return "redirect:/createEventConfirmation";

    }
//}
//====================================
// REQUEST MAPPING WITH FLASH SESSION AND ERRORS
//    @RequestMapping(path = "/createEventsession", method = RequestMethod.GET)
//    public String createFlashSession(@Valid @ModelAttribute("event") Event event, BindingResult result, RedirectAttributes flash) {
//        if (result.hasErrors()) {
//            flash.addFlashAttribute("event", event);
//            flash.addAttribute(BindingResult.MODEL_KEY_PREFIX + "event", result);
//            flash.addAttribute("message", "Please fix errors");
//            return "/createEvent";
//        }
//        return "redirect:/createEvent";
//    }


//    @RequestMapping(path = "/createEvent", method = RequestMethod.POST)
//    public String createEvent(
//            @RequestParam String name,
//            @RequestParam LocalDate eventDate,
//            @RequestParam LocalDate eventTime,
//
//            HttpSession session
//    ) {
//        Event invite = new Event();
//        invite.setEventName(name);
//        invite.setEventDate(eventDate);
//        invite.setEventTime(eventTime);
//
//        session.setAttribute("createEventApplication", invite);
//
//        return "redirect:createEvent/createEventConfirmation";
//    }




// RETURN CONFIRMATION PAGE
    @RequestMapping(path = "/createEventConfirmation", method = RequestMethod.GET)
    public String displayCreateEventConfirmation() {
        return "createEventConfirmation";
    }


// RETURN LINK EXPIRED PAGE
    @RequestMapping(path = "/eventLinkExpired", method = RequestMethod.GET)
    public String displayDecisionLinkExpired() {
        return "eventLinkExpired";
    }
}





//    @RequestMapping(path = "/itemDetail", method = RequestMethod.POST)
//    public String addItemToCart(
//            @RequestParam String name,
//            @RequestParam DollarAmount price,
//            @RequestParam String imageName,
//            @RequestParam String description,
//            HttpSession session
//    ) {
//        Product product = new Product();
//        product.setName(name);
//        product.setPrice(price);
//        product.setImageName(imageName);
//        product.setDescription(description);
//
//        session.setAttribute("shoppingCartApplication", product);
//
//        return "redirect:shoppingCart/shoppingCartSummary";
//    }


//    @RequestMapping(path = "/register", method = RequestMethod.POST)
//    public String register(@Valid @ModelAttribute("user") User user, BindingResult result, RedirectAttributes flash) {
//        if (result.hasErrors()) {
//            flash.addFlashAttribute("user", user);
//            flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
//            flash.addFlashAttribute("message", "Please fix the following errors:");
//            return "redirect:/register";
//        }
//        auth.register(user.getUsername(), user.getPassword(), user.getRole());
//        return "redirect:/";
//    }

//    @RequestMapping("/storeItems/shoppingCarSummary")
//    public String showShoppingCartItems(HttpSession session) {
//        Product caa = (Product)session.getAttribute("shoppingCartApplication");
//        return "redirect:/shoppingCartSummary";
//        //@RequestMapping(path="spaceStoreItems")
//
//    }


//EVENT SEARCH
//    @RequestMapping(path = "/login", method = RequestMethod.POST)
//    public String login(@RequestParam String username, @RequestParam String password, RedirectAttributes flash) {
//        if (auth.signIn(username, password)) {
//            return "redirect:/private";
//        } else {
//            flash.addFlashAttribute("message", "Login Invalid");
//            return "redirect:/login";
//        }
//    }
//

