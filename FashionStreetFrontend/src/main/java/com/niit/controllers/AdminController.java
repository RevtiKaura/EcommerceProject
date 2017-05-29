package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
public class AdminController {

	@Autowired
	CategoryDAO categorydao;
	
	@Autowired
	SupplierDAO supplierdao;
	
	@Autowired 
	ProductDAO productdao;
	
	@RequestMapping("/supplierDone")
	public String insertSupplier(@RequestParam("supplierId") int id,@RequestParam("supplierName") String name,Model m)
	{
		
		Supplier sup=new Supplier();
		sup.setSupplierId(id);
		sup.setSupplierName(name);
		supplierdao.insertSupplier(sup);
		return "adding";
	}
	
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertProduct(@RequestParam("productId") int pid,@RequestParam("productName") String pname,@RequestParam("productCategory") int pc,@RequestParam("productSupplier") int id,@ModelAttribute("productId") Product product,HttpServletRequest request) {

		if (product.getProductId() == 0) {
			productdao.insertProduct(product);
			
			
			MultipartFile file = product.getFile();
			
			String originalfile = file.getOriginalFilename();
			
			String filepath = request.getSession().getServletContext().getRealPath("/resources/images/");
			
			String filename = filepath + "\\" + product.getProductId() + ".jpg";
			System.out.println("File Path File "+filepath);
			
			try {
				byte imagebyte[] = product.getFile().getBytes();
				BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filename));
				fos.write(imagebyte);
				fos.close();
				
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			
			
		} else {
			productdao.updateProduct(product);
		}

		return "redirect:/admin/viewall";
	
}
}
