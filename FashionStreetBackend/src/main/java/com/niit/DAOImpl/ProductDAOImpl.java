package com.niit.DAOImpl;
import java.util.*;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.*;
import com.niit.model.Category;
import com.niit.model.Product;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO{

	@Autowired
	private SessionFactory session;

	
	public List<Product> getProductList() {
		Session ssn=session.openSession();
		ssn.beginTransaction();
		List<Product> list=ssn.createQuery("from Product").list();
		ssn.getTransaction().commit();
		return list;
	}
	
	
	

	public Product getProduct(Integer id) {
		Session ssn=session.openSession();
		ssn.beginTransaction();
		Product p = ssn.get(Product.class,id);
        ssn.getTransaction().commit();
		return p;
	
	}

	public void insertProduct(Product p) {
		session.getCurrentSession().persist(p);
		
	}

	public void deleteProductById(int productId) {
		
		Session ssn=session.openSession();
		ssn.beginTransaction();
		Product p = ssn.get(Product.class, new Integer(productId));
		ssn.delete(p);
		ssn.getTransaction().commit();
		
	}

	public void updateProduct(Product product) {

		Session ssn=session.openSession();
		ssn.beginTransaction();
	
		ssn.update(product);
		ssn.getTransaction().commit();
	}




	public List<Product> getProductsByCategory(int cid) {
		  Session ssn=session.openSession();
		  List<Product> products =null;
		  ssn.beginTransaction();
		  products= ssn.createQuery("from Product where categoryId="+cid).list();   
		  ssn.getTransaction().commit();
		   return products;
	}

		

	  
	

	

}
