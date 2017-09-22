package com.allController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CategoryDao;
import com.dao.ProductDao;
//import com.dao.SupplierDao;
import com.model.Category;
import com.model.Product;
//import com.model.Supplier;

@Controller
public class AdminController {

	@Autowired
	CategoryDao  categoryDao;

	@Autowired
	ProductDao productDao;
/*	
	@Autowired
	SupplierDao supplierDao;*/

	@RequestMapping("/Admin")
	public String admin()
	{
		return "Admin";
		
	}

	@RequestMapping(value="/saveCategory", method = RequestMethod.POST)
	public ModelAndView saveCategory(@RequestParam("cid") int cid , @RequestParam("cname") String cname)  
	{
		ModelAndView mav=new ModelAndView();
		Category c=new Category();
		c.setCid(cid);
		c.setCname(cname);
		categoryDao.insertCategory(c);
		mav.setViewName("Admin"); 
		return mav;

	}
	
	
	/*@RequestMapping(value="/saveSupplier", method = RequestMethod.POST)
	public ModelAndView saveSupplier(@RequestParam("sid") int sid , @RequestParam("supplierName") String supplierName)  
	{
		ModelAndView mav=new ModelAndView();
		Supplier s=new Supplier();
		s.setSid(sid);
		s.setSupplierName(supplierName);
		supplierDao.insertSupplier(s);
		mav.setViewName("Admin"); 
		return mav;

	}*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/addProduct", method = RequestMethod.GET)
	public ModelAndView showProduct()
	{
		ModelAndView mav=new ModelAndView();
		mav.addObject("product",new Product());   
		
		mav.setViewName("ProductPage"); 
		return mav;  

	}

	@RequestMapping(value="/saveProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("product") Product pro)  
	{
		ModelAndView mav=new ModelAndView();
		
		productDao.saveProduct(pro);  
		mav.setViewName("redirect:/addProduct");  
		return mav;

	}
	@RequestMapping(value="/view",method=RequestMethod.GET)
	public ModelAndView productList()
	{		
		List<Product> l=productDao.productList();
		return new ModelAndView("ProductList","prolist",l);
		
		
	}
	@RequestMapping(value="/delete/{id}")
	public ModelAndView deleteProd(@PathVariable int id)
	{
		ModelAndView mav=new ModelAndView();
		productDao.deleteProduct(id);
		mav.setViewName("redirect:/view");  
		return mav;
	}
	@RequestMapping(value="/edit/{id}")
	public ModelAndView update(@PathVariable int id){
		Product p=productDao.getProductById(id);
		return new ModelAndView("EditProduct","cmd",p);
	}

	@RequestMapping(value="/Save",method=RequestMethod.POST)
	public ModelAndView updateSave(@ModelAttribute ("cmd")Product id){
		productDao.updateProduct(id);
		return new ModelAndView("redirect:/view");
	}
	
}
