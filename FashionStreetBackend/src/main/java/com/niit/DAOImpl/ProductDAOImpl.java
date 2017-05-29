package com.niit.DAOImpl;
import java.util.*;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.*;
import com.niit.model.Product;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO{

	@Autowired
	private SessionFactory session;

	
	public List<Product> getProductList() {
		return session.getCurrentSession().createQuery("from Product").list();
	}

	public Product getProduct(Integer id) {
		Product p = session.getCurrentSession().get(Product.class, new Integer(id));

		return p;
	
	}

	public void insertProduct(Product p) {
		session.getCurrentSession().persist(p);
		
	}

	public void deleteProductById(int productId) {
		// TODO Auto-generated method stub
		
	}

	public void updateProduct(Product p) {
		// TODO Auto-generated method stub
		
	}

		

	

	

}
