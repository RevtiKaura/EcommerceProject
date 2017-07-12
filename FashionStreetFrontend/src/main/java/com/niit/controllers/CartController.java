package com.niit.controllers;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CartDao;
import com.niit.DAO.CategoryDAO;
import com.niit.DAO.OrdersDao;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.UserDAO;
import com.niit.model.Cart;
import com.niit.model.Orders;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
public class CartController {

	
	@Autowired
	CategoryDAO categoryDao;
	@Autowired
	ProductDAO productDao;
	@Autowired 
	UserDAO userdao;
	@Autowired 
	CartDao cartdao;
	@Autowired 
    OrdersDao orderdao;
	
   @RequestMapping("checkout1")
	public String test() {
		System.out.println("inside add to cart");
		return "redirect:/checkoutflow";
		
	}
	
	@ModelAttribute
	public ModelAndView addList(){
	
		ModelAndView mav=new ModelAndView();
		mav.addObject("categoryList1", categoryDao.getCategoryList());
		return mav;
		
	}
	

	@RequestMapping(value="/addToCart",method=RequestMethod.POST)
	public ModelAndView addToCart(HttpServletRequest request ){
		ModelAndView mav=new ModelAndView();
		try{
		
			Principal principal = request.getUserPrincipal();
			String userEmail = principal.getName();
			int pid = Integer.parseInt(request.getParameter("pId"));
			
			
		   Double price= Double.parseDouble(request.getParameter("pPrice"));
		   int quantity=Integer.parseInt(request.getParameter("quant"));
		   
		   String productName=request.getParameter("prodName");
		   String imgName=request.getParameter("prodImage");
		   Cart cartExist=cartdao.getCartItem(pid, userEmail);
		   if(cartExist==null){
		   Cart cm = new Cart();
		   cm.setCartPrice(price);
		
		   cm.setCartProductId(pid);
		   cm.setCartQuantity(quantity);
		   cm.setCartImage(imgName);
		   cm.setCartProductname(productName);

		   User u = userdao.findbyUserId(userEmail);
		   cm.setCartUserDetails(u); 
		   cartdao.insert(cm);
		   }
		   else
		   {
		   Cart cm = new Cart();
		   cm.setCartId(cartExist.getCartId());
		   cm.setCartPrice(price);

		   cm.setCartProductId(pid);
		   cm.setCartImage(imgName);
		   cm.setCartProductname(productName);
		   cm.setCartQuantity(cartExist.getCartQuantity()+quantity);
		   User u = userdao.findbyUserId(userEmail);
		   cm.setCartUserDetails(u);
		   cartdao.updateCart(cm);
		   }
		   mav.addObject("cartInfo", cartdao.findCartById(userEmail));

		 //mav.addObject("product", product);
		 mav.setViewName("cart");

		 return mav;
		 } catch (NullPointerException ex) 
		 {
		 mav.setViewName("index");
		 return mav;
		 }
		 }
	
	    @RequestMapping("/checkout")
	    public ModelAndView checkout(HttpServletRequest request){
		ModelAndView mav=new ModelAndView("checkout");
		Principal principal=request.getUserPrincipal();
		String userEmail=principal.getName();
		User u=userdao.findbyUserId(userEmail);
		List<Cart> cart=cartdao.findCartById(userEmail);
		
		mav.addObject("user",u);
		mav.addObject("cart", cart);
		
 
		return mav;
		
	}
	
	
	@RequestMapping(value="/invoiceprocess",method=RequestMethod.POST)
	public ModelAndView orderSave(HttpServletRequest request){
		
		ModelAndView mav=new ModelAndView("invoice");
		Orders oo=new Orders();
		Double d=Double.parseDouble(request.getParameter("total"));
		String payment=request.getParameter("payment");
		Principal principal=request.getUserPrincipal();
		String email=principal.getName();
		User user= userdao.findbyUserId(email);
		
		oo.setUser(user);
		oo.setTotal(d);
		oo.setPayment(payment);
		orderdao.addOrder(oo);
		
		mav.addObject("user",user);
		
		return mav;
	}
	@RequestMapping(value="/deletePCart/{cardId}")
	public ModelAndView deleteProductFromCart(@PathVariable("cardId") int cartId,HttpServletRequest request){
	ModelAndView mav=new ModelAndView();
	Principal principal = request.getUserPrincipal();
	String userEmail = principal.getName();
	cartdao.delete(cartId);
	mav.addObject("cartInfo", cartdao.findCartById(userEmail));

	
	mav.setViewName("cart");
	return mav;
	}
}
