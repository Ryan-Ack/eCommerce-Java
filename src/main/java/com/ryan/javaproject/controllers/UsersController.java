package com.ryan.javaproject.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ryan.javaproject.models.User;
import com.ryan.javaproject.services.UserService;
import com.ryan.javaproject.validators.UserValidator;


@Controller
public class UsersController {
    private final UserService userService;
    private UserValidator userValidator;
    
    public UsersController(UserService userService, UserValidator userValidator) {
        this.userService = userService;
        this.userValidator = userValidator;
    }

    
    @RequestMapping("/registration")
    public String registerForm(@ModelAttribute("user") User user) {
        return "users/registration.jsp";
    }
    
    @RequestMapping("/login")
    public String login() {
    	return "users/login.jsp";
    }
    
    @RequestMapping(value="/registration", method=RequestMethod.POST)
    public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
       userValidator.validate(user, result);
    	
    	if(result.hasErrors()) {
    		return "users/registration.jsp";
    	}
    	User newUser = userService.registerUser(user);
    	session.setAttribute("userid", newUser.getId());
    	return "redirect:/";
    }
    
    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String loginUser(@RequestParam("email") String email, 
    						@RequestParam("password") String password, 
    						Model model, 
    						HttpSession session) {
    	
    	if(userService.authenticateUser(email, password)) {
    		// successful
    		User thisUser = userService.findByEmail(email);
    		session.setAttribute("userid", thisUser.getId());
    		return "redirect:/";
    	}
        // failure
    	model.addAttribute("error", "Invalid login");
    	return "users/login.jsp";
    }
    
//    @RequestMapping("/home")
//    public String home(HttpSession session, Model model) {
//        // get user from session, save them in the model and return the home page
//    	return "redirect:/";
//    }
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        // invalidate session
    	session.invalidate();
        // redirect to login page
    	return "redirect:/login";
    }
}
