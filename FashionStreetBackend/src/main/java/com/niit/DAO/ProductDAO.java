package com.niit.DAO;
import java.util.*;

import com.niit.model.Product;


public interface ProductDAO {
	  public List<Product> getProductList();
	  public Product getProduct(Integer id);
	  public void insertProduct(Product p);
	  public void deleteProductById(int productId);
	  public void updateProduct(Product p);
      public List<Product> getProductsByCategory(int cid); 
	  
	
}
