package com.allController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UserDao;
import com.model.User;

@Controller
public class HomeController {
	@Autowired
	UserDao userDao;

	@RequestMapping("/")
	public String homePage()
	{
		return "index";
	}
	@RequestMapping("/index")
	public String home()
	{
		return "index";
	}
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	
	
	@RequestMapping(value="/RegisterPage", method = RequestMethod.GET)
	public ModelAndView showRegister()
	{
		ModelAndView mav=new ModelAndView();
		mav.addObject("user",new User());   
		
		mav.setViewName("RegisterPage"); 
		return mav;  

	}

	@RequestMapping(value="/saveregister", method = RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute("user") User user)  
	{
		ModelAndView mav=new ModelAndView();
		user.setRole("ROLE_USER");  
		userDao.saveUser(user);  
		mav.setViewName("redirect:/login");  
		return mav;

	}
	
	
	

}











