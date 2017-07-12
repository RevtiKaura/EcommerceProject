package com.niit.controllers;

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

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.niit.DAOImpl.*;
import com.niit.DAO.*;
import com.niit.model.*;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	CategoryDAO categoryDao;
	
	@Autowired
	SupplierDAO supplierDao;
	
	@Autowired
	ProductDAO productDao;

	@RequestMapping("/viewCategoryList")// this is for your landing page
	public ModelAndView message5(){
		
		List<Category> l=categoryDao.getCategoryList();
		ModelAndView mv = new ModelAndView("categoryLists");
		mv.addObject("categoryList1", categoryDao.getCategoryList());
		mv.addObject("catList", l);
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
		m.addAttribute("categoryList1", categoryDao.getCategoryList());

		categoryDao.insertCategory(cat);
	
		return "dummycat";
	}

	
	@RequestMapping("/pro")
	public ModelAndView proList(){
		ProductDAOImpl pend=new ProductDAOImpl();
		List list=pend.getProductList();
		
		ModelAndView mv = new ModelAndView("productLists");
		mv.addObject("categoryList1", categoryDao.getCategoryList());

		mv.addObject("PList",list);
		return mv;
		
	}
	
	@RequestMapping(value="/saveProduct" ,method=RequestMethod.POST)
	public ModelAndView saveProducts(@RequestParam("file") MultipartFile file,HttpServletRequest request)
	{

		ModelAndView mav=new ModelAndView();
		Product product=new Product();
		mav.addObject("categoryList1", categoryDao.getCategoryList());

		product.setProductName(request.getParameter("productName"));
		product.setCategory(categoryDao.getCategoryById(Integer.parseInt(request.getParameter("categoryId"))));
		product.setSupplier(supplierDao.getSupplierById(Integer.parseInt(request.getParameter("supplierId"))));
		product.setDescription(request.getParameter("description"));
		product.setPrice(Float.parseFloat(request.getParameter("price")));	
		product.setQuantity(Integer.parseInt(request.getParameter("quantity"))); 
		
		
		
		String filepath = request.getSession().getServletContext().getRealPath("/");	
		String originalfile = file.getOriginalFilename();
		System.out.println(filepath+originalfile);
	
		product.setImgName(originalfile);
		productDao.insertProduct(product);
		try {
			byte imagebyte[] = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"/resources/images/"+originalfile));
			fos.write(imagebyte);
			fos.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
		mav.setViewName("dummypro");// will look for request mapping 
		
		return mav;
	}


	@RequestMapping("/viewProductList")// this is for your landing page
	public ModelAndView message6(){
		
		List<Product> l=productDao.getProductList();
		ModelAndView mv = new ModelAndView("productLists");
		mv.addObject("productlist", l);
		return mv;
	}
	
@RequestMapping(value="/deleteProduct/{pid}",method=RequestMethod.GET)
public String delete(@PathVariable("pid") Integer id)
{
	productDao.deleteProductById(id);
	return "redirect:/admin/viewProductList";
}
	
	@RequestMapping(value="/updateProduct/{pid}" ,method=RequestMethod.GET)
	//public ModelAndView update1(@PathVariable("pid") Integer id,Model m)
	public ModelAndView update1(@PathVariable("pid") Integer id)
	{
	ModelAndView mv=new ModelAndView("updateProduct");
	Product pro=productDao.getProduct(id);
	mv.addObject("clist",categoryDao.getCategoryList());
	mv.addObject("slist",supplierDao.getSupplierList());
	mv.addObject("product",pro);
	
	return mv;
	}
	

	@RequestMapping(value = "/productUpdate", method = RequestMethod.POST)
	public ModelAndView updateProduct(HttpServletRequest request, @RequestParam("file") MultipartFile file) {
		System.out.println("called");
		ModelAndView mav = new ModelAndView();

		String pid = request.getParameter("productId");
		String pname = request.getParameter("productName");
		// System.out.println(n);
		String ct = request.getParameter("pCategory");
		String sp = request.getParameter("pSupplier");

		String p = request.getParameter("price");
		String d = request.getParameter("description");

		String q = request.getParameter("quantity");

		Product pp = new Product();
		pp.setProductId(Integer.parseInt(pid));
		pp.setProductName(pname);
		pp.setCategory(categoryDao.getCategoryById(Integer.parseInt(ct)));
		pp.setSupplier(supplierDao.getSupplierById(Integer.parseInt(sp)));
		pp.setPrice(Float.parseFloat(p));

		pp.setDescription(d);
		pp.setQuantity(Integer.parseInt(q));

		String filepath = request.getSession().getServletContext().getRealPath("/");
		// String filename = filepath + "\\" + product.getId() + "default" +
		// ".jpg";

		String filname = file.getOriginalFilename();
		pp.setImgName(filname);
		productDao.updateProduct(pp);
		System.out.println("File path File" + filepath + " " + filname);

		try {
			// byte imagebyte[] = product.getPimage().getBytes();
			byte imagebyte[] = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(
					new FileOutputStream(filepath + "/resources/images/" + filname));
			fos.write(imagebyte);
			fos.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		mav.setViewName("redirect:/admin/viewProductList");
		return mav;

	}
	
	
	@RequestMapping("/supplierDone")
	public String insertSupplier(@RequestParam("supplierId") int id,@RequestParam("supplierName") String name,Model m)
	{
		
		
		Supplier sup=new Supplier();
		sup.setSupplierId(id);
		sup.setSupplierName(name);
		supplierDao.insertSupplier(sup);
		return "dummysup";
	}
	
	@RequestMapping("/viewSupplierList")// this is for your landing page
	public ModelAndView message7(){
		
		List<Supplier> l=supplierDao.getSupplierList();
		ModelAndView mv = new ModelAndView("supplierLists");
		mv.addObject("supplierlist", l);
		return mv;
	}
	
	@RequestMapping("/add")
	public ModelAndView addData()
	{
		List<Category> cat=categoryDao.getCategoryList();
		List<Supplier> sup=supplierDao.getSupplierList();
		Product product=new Product();
		ModelAndView mv = new ModelAndView("adding");
		mv.addObject("cat1",cat);
		mv.addObject("sup1",sup);
		mv.addObject("categoryList1", categoryDao.getCategoryList());

		mv.addObject("product",product);
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
