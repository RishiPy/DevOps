package com.allController;



import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CartDao;
import com.dao.ProductDao;
import com.dao.UserDao;
import com.model.Cart;
import com.model.Product;
import com.model.User;

@Controller
@SuppressWarnings("unused")
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
	
	@RequestMapping(value="/addtocart/{id}", method = RequestMethod.POST)
	public ModelAndView addToCart(@PathVariable("id") int id,@RequestParam("quantity")String quantity,Principal principal)  
	{
		    ModelAndView mav;
		    if(principal!=null) {
			mav=new ModelAndView("cart");	
			String name=principal.getName();
			User u=userDao.getUserByName(name);
			System.out.println("Prod"+id);
			Product p=productDao.getProductById(id);
			System.out.println(p.getProductName());
			double price=p.getProductPrice();
			int q=Integer.parseInt(quantity);
			int quant=p.getProductQuantity();
			String prodName=p.getProductName();
			String description=p.getProductDesc();
			
            double totalprice=price*q;
			
			cart.setFinalAmount(totalprice);
			cart.setUser(u);
			cart.setProductId(id);
		    cart.setPrice(price);
			cart.setCartProductName(prodName);
			cart.setCartProductDescription(description);
			
			Cart cartexists=cartDao.getCartItem(id, name);
			if(cartexists==null)
			{
				cart.setTotalItems(q);     	
				cartDao.insertCart(cart);
				
				
			}
			
			else
			{
				cart.setCartid(cartexists.getCartid());
				cart.setTotalItems(cartexists.getTotalItems()+q);
				cartDao.updateCartItem(cart);
			}
			
			 int stock=p.getProductQuantity();
			 int fin=stock-q;
			 p.setProductQuantity(fin);
			 productDao.updateProduct(p);
			
			mav.addObject("cartinfo",cartDao.findCartList(name));
	
					
		 }
		 else
		 {
			 mav=new ModelAndView("redirect:/login");
			 
		 }
		return mav;
			
			
		   
		}
	
	
	@RequestMapping(value="/CheckOut",method=RequestMethod.GET)
	public ModelAndView checkout(Principal principal)
	{
		ModelAndView mav=new ModelAndView("checkout");
		String name=principal.getName();
		User u=userDao.getUserByName(name);
		List<Cart> ca=cartDao.findCartList(name);
		mav.addObject("user",u);
		mav.addObject("cartDetails",ca);
		return mav;
		
	}
	@RequestMapping(value="/Thankyou",method=RequestMethod.POST)
	public ModelAndView End()
	{
		ModelAndView mav=new ModelAndView("ThankYou");
         return mav;
		
	}
	
	@RequestMapping(value="/deleteCart/{cartid}",method=RequestMethod.GET)
	public ModelAndView removeCart(@PathVariable int cartid,Principal principal)
	{ 	 ModelAndView mav=new ModelAndView("cart");
		
		String name=principal.getName();

		cartDao.deleteCartItem(cartid);
		mav.addObject("cartinfo",cartDao.findCartList(name));

		 return mav; 
	}
	
	
	
	
	
	
	
	

}
