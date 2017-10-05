package com.allController;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.validation.BindingResult;

import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.dao.SupplierDao;
import com.dao.UserDao;

import com.model.User;

@Controller
/*@RequestMapping("/user")*/

public class HomeController {
	@Autowired
	UserDao userDao;

	@Autowired
	CategoryDao  categoryDao;

	@Autowired
	ProductDao productDao;
	
	@Autowired
	SupplierDao supplierDao;
	
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
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login()
    {
     
        ModelAndView mav = new ModelAndView();
      
        mav.setViewName("login");

        return mav;

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
	public ModelAndView saveRegister(@Valid @ModelAttribute("user") User user, BindingResult result)  
	{
		ModelAndView mav=new ModelAndView();
	
		if(result.hasErrors())
		{
			mav.setViewName("RegisterPage");
			 return mav; 
		}
		else
		{
			user.setRole("ROLE_USER"); 
			userDao.saveUser(user);    
			mav.setViewName("redirect:/login"); 
		   return mav;
			
		}
		
		
		
	}
	

	@RequestMapping(value="/custproduct")
	public ModelAndView custProduct(@RequestParam("cid") int cid)
	{
		System.out.println(cid);
		ModelAndView mav=new ModelAndView();
		
		/*List<Product> l=productDao.custprolist(cid);
		for(Product l1:l)
		{
			System.out.println(l1.getProductName());
		}*/
		 mav.addObject("prolist",productDao.custprolist(cid));   
		mav.setViewName("CustProducts");
		return mav;  

	}
	@ModelAttribute     //The @ModelAttribute is an annotation that binds a method parameter or method return value to a named model attribute and then exposes it to a web view.
	public void categoryList(Model m)
	{	
		
		m.addAttribute("cattlist",categoryDao.categoryList());
		m.addAttribute("productlist",productDao.productList());
		
		
	}
	
	
	

}











