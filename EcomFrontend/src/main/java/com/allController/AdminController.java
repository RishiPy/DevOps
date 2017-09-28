
package com.allController;


import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.dao.SupplierDao;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;

@Controller
public class AdminController {

	@Autowired
	Product pro;
	
	
	
	
	@Autowired
	CategoryDao  categoryDao;

	@Autowired
	ProductDao productDao;
	
	@Autowired
	SupplierDao supplierDao;



	@RequestMapping(value="/saveCategory", method = RequestMethod.POST)
	public ModelAndView saveCategory(@RequestParam("cname") String cname)  
	{
		ModelAndView mav=new ModelAndView();
		Category c=new Category();
		
		c.setCname(cname);
		categoryDao.insertCategory(c);
		mav.setViewName("Admin"); 
		return mav;

	}
	@RequestMapping(value="/cat",method=RequestMethod.GET)
	public ModelAndView categoryList()
	{	
		List<Category> l=categoryDao.categoryList();
		
		return new ModelAndView("CategoryList","catlist",l);
		
		
	}
	
	
	@RequestMapping(value="/saveSupplier", method = RequestMethod.POST)
	public ModelAndView saveSupplier(@RequestParam("sname") String sname)  
	{
		ModelAndView mav=new ModelAndView();
		Supplier s=new Supplier();
		
		s.setSname(sname);
		supplierDao.insertSupplier(s);
		mav.setViewName("Admin"); 
		return mav;

	}
	
	@RequestMapping(value="/sup",method=RequestMethod.GET)
	public ModelAndView supplierList()
	{	
		List<Supplier> l=supplierDao.supplierList();
	
		
		return new ModelAndView("SupplierList","suplist",l);
		
		
	}
	
	
	
	
	@RequestMapping(value="/Adm", method = RequestMethod.GET)
	public ModelAndView showProduct(HttpServletRequest request)
	{
		ModelAndView mav=new ModelAndView();
		
     	
		
		 List<Category> cl=categoryDao.categoryList();
		
		 mav.addObject("catlist",cl);
		 
		 List<Supplier> sl=supplierDao.supplierList();
		 
		 mav.addObject("suplist",sl);
		
		 mav.addObject("product",new Product());   
		mav.setViewName("Admin"); 
		return mav;  

	}
	
	
	
	@RequestMapping(value="/saveProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("product") Product pro,@RequestParam("image") MultipartFile file,HttpServletRequest request)  
	{
		pro.setCategory(categoryDao.getCategoryById(Integer.parseInt(request.getParameter("categoryid"))));
	    pro.setSupplier(supplierDao.getSupplierById(Integer.parseInt(request.getParameter("supplierid"))));
	    
		
		String filepath=request.getSession().getServletContext().getRealPath("/");
		String originalfile=file.getOriginalFilename();
		
	    
	    productDao.saveProduct(pro);

	    
	    System.out.println(filepath+originalfile); //optional
	    try
	    {
	    	byte imagebyte[] =file.getBytes();
	    	BufferedOutputStream fos=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/images/"+pro.getId()+".png"));
	        System.out.println("FilePath: "+filepath);
	    	fos.write(imagebyte);   
	        fos.close();
	    }
	    catch(IOException e)
	    {
	    	e.printStackTrace();
	    }
	   
	    
	    	    
	    ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/Adm");  
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
		ModelAndView mav=new ModelAndView("EditProduct","cmd",p);
	
		 List<Category> cl=categoryDao.categoryList();
		 mav.addObject("catlist",cl);
		 
		 List<Supplier> sl=supplierDao.supplierList();
		 mav.addObject("suplist",sl);
		return mav;
	}

	@RequestMapping(value="/Save",method=RequestMethod.POST)
	public ModelAndView updateSave(@ModelAttribute("cmd")Product id,@RequestParam("image") MultipartFile file,HttpServletRequest request){
		
		id.setCategory(categoryDao.getCategoryById(Integer.parseInt(request.getParameter("categoryid"))));
	    id.setSupplier(supplierDao.getSupplierById(Integer.parseInt(request.getParameter("supplierid"))));
	    
		
	    String filepath=request.getSession().getServletContext().getRealPath("/");
		String originalfile=file.getOriginalFilename();
		
		productDao.updateProduct(id);
	 

	    
	    System.out.println(filepath+originalfile); //optional
	    try
	    {
	    	byte imagebyte[] =file.getBytes();
	    	BufferedOutputStream fos=new BufferedOutputStream(new FileOutputStream(filepath+"/resources/images/"+id.getId()+".png"));
	        System.out.println("FilePath: "+filepath);
	    	fos.write(imagebyte);   
	        fos.close();
	    }
	    catch(IOException e)
	    {
	    	e.printStackTrace();
	    }
	   

		
	   return new ModelAndView("redirect:/view");
		
		

		
	}
	
}
