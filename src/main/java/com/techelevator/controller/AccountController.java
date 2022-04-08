package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.model.User;
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

import javax.validation.Valid;


/**
 * AccountController
 */
@Controller
public class AccountController {
    @Autowired
    private AuthProvider auth;

    @RequestMapping(method = RequestMethod.GET, path = {"/", "/index"})
    public String index(ModelMap modelHolder) {
        modelHolder.put("user", auth.getCurrentUser());
        return "index";
    }

    @RequestMapping(path = "/login", method = RequestMethod.GET)
    public String login(ModelMap modelHolder) {

        return "login";
    }


    @RequestMapping(path = "/login", method = RequestMethod.POST)
    public String login(@RequestParam String username, @RequestParam String password, RedirectAttributes flash) {
        if (auth.signIn(username, password)) {
            return "redirect:/private";
        } else {

            flash.addFlashAttribute("username", "username");
            //result.addError(new FieldError("username", "username", "Invalid Login"));

            flash.addFlashAttribute("message", "Login Invalid");
            return "redirect:/login";
        }
    }

//    @RequestMapping(path = "/login", method = RequestMethod.POST)
//    public String login(@RequestParam @ModelAttribute("username") String username, BindingResult userResult, @RequestParam String userPassword, RedirectAttributes flash) {
//        if (auth.signIn(username, userPassword)) {
//            return "redirect:/private";
//        } else {
//            userResult.addError(new FieldError("username", "username", "Invalid Login"));
//        }
//        if(userResult.hasErrors()){
//            flash.addFlashAttribute("username", username);
//            flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "username", userResult);
//            flash.addFlashAttribute("message", "Login Invalid");
//            return "redirect:/login";
//        }
//        return "redirect:/login";
//    }

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
            result.addError(new FieldError("user", "username", "Email already exist please try again"));
        }

       if (result.hasErrors()) {
            flash.addFlashAttribute("user", user);
            flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
            flash.addFlashAttribute("message", "Please fix the following errors:");

            return "redirect:/register";
        }

        auth.register(user.getUsername(), user.getPassword(), user.getRole());
        return "redirect:/";
    }




}
