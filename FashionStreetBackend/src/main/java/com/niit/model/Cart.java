package com.niit.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;


@Entity
@Table(name="CartDetails")
public class Cart implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="CartId")
	private Cart cartId;
	
	@OneToMany
    @JoinColumn(name="productId")
	private Set<Product> products = new HashSet<Product>(0);
	
	@OneToMany
    @JoinColumn(name="Cart_Supplier_ID")
	private Set<Supplier> suppliers = new HashSet<Supplier>(0);
	private double price;
	private int quantity;
	private String status;
	
	@OneToOne
    @JoinColumn(name="Cart_User_ID")
	private	User user;
	
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public Cart getCartId() {
		return cartId;
	}
	public void setCartId(Cart cartId) {
		this.cartId = cartId;
	}

	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	public Set<Supplier> getSuppliers() {
		return suppliers;
	}
	public void setSuppliers(Set<Supplier> suppliers) {
		this.suppliers = suppliers;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	
	
	
}
