package com.niit.DAO;
import java.util.*;

import com.niit.model.Product;


public interface ProductDAO {
	  public List<Product> getProductList();
	  public Product getProduct(Integer id);
}
