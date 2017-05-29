package com.niit.model;

import java.io.Serializable;
import java.util.*;
import javax.persistence.*;

@Entity
@Table(name="UserDetails")
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="UserId")
    private int userId;
	private String fullName;
	private String password;
	
	@OneToOne
    @JoinColumn(name="User_Cart_ID")
	private Cart cartId;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "orderId")
    private Set<Order> orders = new HashSet<Order>(0);
    private String role;

public int getUserId() {
	return userId;
}

public Cart getCartId() {
	return cartId;
}

public void setCartId(Cart cartId) {
	this.cartId = cartId;
}

public Set<Order> getOrders() {
	return orders;
}

public void setOrders(Set<Order> orders) {
	this.orders = orders;
}

public void setUserId(int userId) {
	this.userId = userId;
}
public String getFullName() {
	return fullName;
}
public void setFullName(String fullName) {
	this.fullName = fullName;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}

}
