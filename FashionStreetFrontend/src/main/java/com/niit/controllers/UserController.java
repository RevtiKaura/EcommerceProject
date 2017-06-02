package com.niit.controllers;

import java.util.List;

import javax.enterprise.inject.Model;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CategoryDAO;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.SupplierDAO;
import com.niit.DAO.UserDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.model.User;

@Controller
public class UserController {

	@Autowired
	UserDAO userDao;
	
	@Autowired
	CategoryDAO categoryDao;
	
	@Autowired
	SupplierDAO supplierDao;
	
	@Autowired
	ProductDAO productDao;
	
	@RequestMapping(value="/reg",method=RequestMethod.GET)
	public ModelAndView msg()
	{
		ModelAndView mv=new ModelAndView("registration");
		mv.addObject("user",new User());
		return mv;
		
		
	}
	
	
	@ModelAttribute
	public ModelAndView  addList(){
	
		ModelAndView mav=new ModelAndView();
		mav.addObject("categoryList1", categoryDao.getCategoryList());
		return mav;
		
	}
	
	@RequestMapping(value="/registerUser",method=RequestMethod.POST)
	public ModelAndView register(@Valid @ModelAttribute("user") User user,BindingResult result)// in brackets we have to give the name as form command name
	{
		ModelAndView mav=new ModelAndView();
		if(result.hasErrors()){
			mav.setViewName("registration");
			return mav;
			
			
		}
		else{
		user.setRole("ROLE_USER");
		user.setEnabled(true);
		userDao.insertUser(user);
		mav.setViewName("index");
		return mav;
		}
	}
	
	@RequestMapping("/noAccessPage")
	public String accessDen() {

		return "noAccessPage";
	}
	
	@RequestMapping("/login")
	public String access() {

		return "login";
	}
	

}