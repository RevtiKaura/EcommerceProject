package com.DAOImpl;
import java.util.*;
import com.DAO.*;
import com.models.Product;

public class ProductDAOImpl implements ProductDAO{

	
	
	public List getProductList() {
	
		Product pm1=new Product(1,"Crop Top","GlobalDesi","Trendy","Classy and stylish for casual meetings",900,4,"GlobalTrends");
		Product pm2=new Product(2,"Long Top","GlobalDesi","Trendy","Classy and stylish for casual meetings",900,4,"GlobalTrends");
		Product pm3=new Product(3,"Medium Top","GlobalDesi","Trendy","Classy and stylish for casual meetings",900,4,"GlobalTrends");
		
		List al=new ArrayList();
		al.add(pm1);
		al.add(pm2);
		al.add(pm3);
		return al;
	}

	public Product getProduct(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	

	

	

}
