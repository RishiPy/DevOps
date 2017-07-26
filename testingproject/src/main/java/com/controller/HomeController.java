package com.controller;

import javax.naming.Binding;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.daoImpl.UserDaoImpl;
import com.model.User;

@Controller
public class HomeController {
	
	@Autowired
	UserDaoImpl userDaoImpl;
	
	
	@RequestMapping("/")
	public String homepage()
	{
		return "index";
	}
	@RequestMapping("/index")
	public String home()
	{
		return "index";
	}
	
	@RequestMapping("/SignIn")
	public String login()
	{
		return "SignIn";
	}
	/*@RequestMapping("/SignUp")
	public String register(Model m)
	{
		m.addAttribute("user", new User());
		return "SignUp";    //   1111))) it is returning a name  
	}
	*/
	
	
	
	
	
	
	@RequestMapping(value="/SignUp", method = RequestMethod.GET)
	public ModelAndView showRegister()
	{
		ModelAndView mav=new ModelAndView();
		mav.addObject("user",new User());   //new User() is a constructor and this create the object  and the object reference name is small user and adding the reference to the mav object
		                                         //it is reference by class
		
		mav.setViewName("SignUp");  //view name   //jsp reference with its name
		return mav; //  2222))) but it return an object this object holds the reference of the view name and the model name  ..thats why we take ModelAndView Class 
		
	}
	
	@RequestMapping(value="/saveregister", method = RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute("user") User user, BindingResult result)   //BindingResult is used to validation
	{
		ModelAndView mav=new ModelAndView();
		if(result.hasErrors())
		{
			mav.setViewName("SignUp");
			 return mav;
		}
		else
		{
			user.setRole("ROLE_USER");  //setRole will set the role of the user whether it is guest user or admin  //that's why the role is not defined in index page  ..in input box 
			userDaoImpl.insertUser(user);    //calling insertUser()  method that is written in UserDaoImpl class from controller class
			mav.setViewName("redirect:/SignIn");  //means after the registration  is completed the SignIn page is loaded
		   return mav;
			
		}
		
	}
    }

