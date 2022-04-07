package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;


/**
 * Invite Controller
 */
@Controller
public class InviteController {
    @Autowired
    private AuthProvider auth;

    @RequestMapping(path = "/createEvent", method = RequestMethod.GET)
    public String createEventPage(){
        return "createEvent";
    }


}