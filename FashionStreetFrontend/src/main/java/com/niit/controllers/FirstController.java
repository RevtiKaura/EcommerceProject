package com.niit.controllers;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
import com.niit.DAOImpl.*;
import com.niit.DAO.*;
import com.niit.model.*;

@Controller
public class FirstController {
	
	@Autowired
	CategoryDAO categorydao;
	
	@Autowired
	SupplierDAO supplierdao;
	
	@Autowired 
	ProductDAO productdao;

	@RequestMapping("/")// this is for your landing page
	public ModelAndView message(){
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("message", "Welcome to Fashion Street!!");
		return mv;
	}
	
	@RequestMapping("/home")// this is for your landing page
	public ModelAndView message1(){
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("message", "Welcome to Fashion Street!!");
		return mv;
	}
	@RequestMapping("/productDet")// this is for your landing page
	public ModelAndView product(){
		ModelAndView mv = new ModelAndView("productDetails");
		return mv;
	}
	
	
	@RequestMapping("/registration")// this is for your landing page
	public ModelAndView reg(){
		ModelAndView mv = new ModelAndView("registration");
		return mv;
	}
	
	@RequestMapping("/pro")// this is for your landing page
	public ModelAndView proList(){
		ProductDAOImpl pend=new ProductDAOImpl();
		List list=pend.getProductList();
		
		ModelAndView mv = new ModelAndView("productLists");
	//	mv.addObject("productData", pend.getProductList());
		mv.addObject("PList",list);
		return mv;
		
	}
	
	@RequestMapping("/add")
	public ModelAndView addData(){
		List<Category> cat=categorydao.getCategoryList();
		List<Supplier> sup=supplierdao.getSupplierList();
		Product product=new Product();
		ModelAndView mv = new ModelAndView("adding");
		mv.addObject("cat1",cat);
		mv.addObject("sup1",sup);
		mv.addObject("product",product);
		
		return mv;
	}
	
	@RequestMapping("/admin/viewcategory")
	public ModelAndView viewCategory(){
		ModelAndView mv = new ModelAndView("display");
		return mv;
	}
	
	@RequestMapping("/categoryDone")
	public String insertCategory(@RequestParam("catId") int id,@RequestParam("catName") String name,Model m)
	{
		//m.addAttribute("cid",id);
		//m.addAttribute("cname",name);
		Category cat=new Category();
		cat.setCategoryId(id);
		cat.setCategoryName(name);
		categorydao.insertCategory(cat);
	
		return "redirect:/view";
	}
	
	@RequestMapping("/view")// this is for your landing page
	public ModelAndView message5(){
		
		List<Category> l=categorydao.getCategoryList();
		ModelAndView mv = new ModelAndView("viewcategorytab");
		mv.addObject("catList", l);
		return mv;
	}
	
	
	
@RequestMapping("/productDone")
public String populateProduct(@ModelAttribute("product") Product product)
{

	productdao.insertProduct(product);
	return "";
}
	
}