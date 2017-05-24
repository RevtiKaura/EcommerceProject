package com.DAO;
import java.util.*;
import com.models.*;

public interface ProductDAO {
	  public List<Product> getProductList();
	  public Product getProduct(Integer id);
}
