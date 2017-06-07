package com.niit.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import org.springframework.beans.factory.annotation.Autowired;


@Entity
@Table
public class Cart implements Serializable {
	
	@Id
	@GeneratedValue
	@Column(name = "cartId")
	private int cartId;

	@Column(name = "cartProductId")
	private int cartProductId;
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "userMailId")
	private User cartUserDetails;
	@Column(name = "cartPrice")
	private Double cartPrice;
	@Column(name = "cartQuantity")
	private int cartQuantity;
	private String cartProductname;
	private String cartImage;
	

	public String getCartProductname() {
		return cartProductname;
	}

	public void setCartProductname(String cartProductname) {
		this.cartProductname = cartProductname;
	}

	public String getCartImage() {
		return cartImage;
	}

	public void setCartImage(String cartImage) {
		this.cartImage = cartImage;
	}

	public int getCartId() {
	return cartId;
	}

	public void setCartId(int cartId) {
	this.cartId = cartId;
	}

	public int getCartProductId() {
	return cartProductId;
	}

	public void setCartProductId(int cartProductId) {
	this.cartProductId = cartProductId;
	}

	public User getCartUserDetails() {
	return cartUserDetails;
	}

	public void setCartUserDetails(User cartUserDetails) {
	this.cartUserDetails = cartUserDetails;
	}

	public Double getCartPrice() {
	return cartPrice;
	}

	public void setCartPrice(Double cartPrice) {
	this.cartPrice = cartPrice;
	}

	public int getCartQuantity() {
	return cartQuantity;
	}

	public void setCartQuantity(int cartQuantity) {
	this.cartQuantity = cartQuantity;
	}


}