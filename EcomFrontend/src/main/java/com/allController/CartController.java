package com.allController;



import java.security.Principal;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.dao.CartDao;
import com.dao.ProductDao;
import com.dao.UserDao;
import com.model.Cart;
import com.model.Product;
import com.model.User;

@Controller

public class CartController {
	
	@Autowired
	UserDao userDao;
	/*@Autowired
	CartItemDao cartItemDao;*/
	@Autowired
	ProductDao productDao;
	@Autowired
	CartDao cartDao;
	@Autowired
	Cart cart;
	
	@RequestMapping(value="/gotocart/{id}", method = RequestMethod.POST)
	public ModelAndView addToCart(@PathVariable("id") int id,@RequestParam("quantity")String quantity,Principal principal)  
	{
		if(principal!=null) {
			ModelAndView mav=new ModelAndView("cart");
			User u=userDao.getUserByName(principal.getName());
			Product p=productDao.getProductById(id);
			mav.addObject("product",productDao.getProductById(id));
			double price=p.getProductPrice();
			long quant=p.getProductQuantity();
			double totalprice=price*quant;
			cart.setTotalItems(quant);
			cart.setFinalAmount(totalprice);
			String useremail=u.getEmail();
			cart.setUser(userDao.getUserByEmail(useremail));
			cartDao.insertCart(cart);
			
			
			return mav ;
	
	}
		else {
			return null;
		}
	}

}
