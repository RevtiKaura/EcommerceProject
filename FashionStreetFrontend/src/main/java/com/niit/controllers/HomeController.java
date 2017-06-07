package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
import com.niit.DAOImpl.*;
import com.niit.DAO.*;
import com.niit.model.*;

@Controller
public class HomeController {

	@Autowired
	CategoryDAO categorydao;

	@Autowired
	SupplierDAO supplierdao;

	@Autowired
	ProductDAO productdao;

	
	
	@RequestMapping( value={"/","/home"})
	public ModelAndView welcome() {
		ModelAndView model = new ModelAndView("index");
		model.addObject("categoryList1", categorydao.getCategoryList());
      	return model;
	}
	
	// whatever we'll write inside this method will go to every request
	@ModelAttribute
	public ModelAndView addList(){
	
		ModelAndView mav=new ModelAndView();
		mav.addObject("categoryList1", categorydao.getCategoryList());
		return mav;
		}

	@RequestMapping(value = "/productCustList/{cid}")
	public ModelAndView displayCustProducts(@PathVariable("cid") int cid) {
		ModelAndView mv = new ModelAndView("productCustList");
		mv.addObject("categoryList1", categorydao.getCategoryList());

		mv.addObject("custProducts", productdao.getProductsByCategory(cid));
		return mv;
	}

}