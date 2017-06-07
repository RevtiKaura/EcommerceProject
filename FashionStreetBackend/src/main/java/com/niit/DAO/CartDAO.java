package com.niit.DAO;

import java.util.List;

import com.niit.model.Cart;




public interface CartDao
{

	
	void insert(Cart cart);
	public List<Cart> findCartById(String userId);
	public Cart getCartItem(int pid,String  userId);
    void updateCart(Cart cart);
    void delete(int cartId);
}