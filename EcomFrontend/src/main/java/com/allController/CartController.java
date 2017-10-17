package com.allController;



import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CartDao;
import com.dao.CategoryDao;
import com.dao.OrdersDao;
import com.dao.ProductDao;
import com.dao.UserDao;
import com.model.Cart;
import com.model.Orders;
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
	@Autowired
	Orders ord;
	@Autowired
	OrdersDao orderDao;
	

	@Autowired
	CategoryDao  categoryDao;


	
	
	
	@RequestMapping(value="/addtocart/{id}", method = RequestMethod.POST)
	public ModelAndView addToCart(@PathVariable("id") int id,@RequestParam("quantity")String quantity,Principal principal)  
	{
		    ModelAndView mav;
		    if(principal!=null) {
			mav=new ModelAndView("cart");	
			String name=principal.getName();
			User u=userDao.getUserByName(name);
			
			System.out.println("Prod"+id);   //
			
			Product p=productDao.getProductById(id);
			
			System.out.println(p.getProductName());   //
			
			double price=p.getProductPrice();
			int q=Integer.parseInt(quantity);
			
			//int quant=p.getProductQuantity();
			
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
			if(cartexists==null && q!=0)
			{
				cart.setTotalItems(q);     	
				cartDao.insertCart(cart);
				mav = new ModelAndView("cart");
				
				
			}
			
			else if(cartexists != null && q!=0)
			{
				cart.setCartid(cartexists.getCartid());
				cart.setTotalItems(cartexists.getTotalItems()+q);
				cartDao.updateCartItem(cart);
				mav = new ModelAndView("cart");
			}
			else if(q==0)
			{
				mav = new ModelAndView("redirect:/index");
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
	
	@RequestMapping(value="/deleteCart/{cartid}",method=RequestMethod.GET)
	public ModelAndView removeCart(@PathVariable int cartid,Principal principal)
	{ 	 ModelAndView mav=new ModelAndView("cart");
		
		String name=principal.getName();

		cartDao.deleteCartItem(cartid);
		mav.addObject("cartinfo",cartDao.findCartList(name));

		 return mav; 
	}
	
	@RequestMapping(value="/invoice",method=RequestMethod.POST)
	public ModelAndView invoice(Principal principal,@RequestParam("paymentType") String paymentType,@RequestParam("total") String total)
	{
		ModelAndView mav=new ModelAndView("invoice");
		String name=principal.getName();
		List<Cart> cart=cartDao.findCartList(name);
		User u=userDao.getUserByName(name);
		ord.setUser(u);
		double totalAmt=Double.parseDouble(total);
		System.out.println(totalAmt);
		ord.setTotalamt(totalAmt);
		ord.setPaymentType(paymentType);
		mav.addObject("use",u);
		mav.addObject("cart",cart);
		mav.addObject("order",ord);
		orderDao.addOrder(ord);
		for (Cart ci : cart) {
			cartDao.deleteCartItem(ci.getCartid());
		}
		
		return mav;
		
	}
	@RequestMapping(value="/Thankyou",method=RequestMethod.POST)
	public ModelAndView End()
	{
		ModelAndView mav=new ModelAndView("thankyou");
         return mav;
		
	}
	
	@RequestMapping(value = "/Cart")
	public ModelAndView openCart(Principal principal) {
		ModelAndView mav;

		if (principal != null) {
			String name=principal.getName();
			mav = new ModelAndView("cart");
			List<Cart> cart = cartDao.findCartList(name);
			mav.addObject("cartinfo", cart);
		} else {
			mav = new ModelAndView("login");
		}

		return mav;
	}

	
	
	@ModelAttribute     //The @ModelAttribute is an annotation that binds a method parameter or method return value to a named model attribute and then exposes it to a web view.
	public void categoryList(Model m)
	{	
		
		m.addAttribute("cattlist",categoryDao.categoryList());
		m.addAttribute("productlist",productDao.productList());
		
		
	}
	
	
	
	

}
