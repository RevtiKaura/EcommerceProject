package com.niit.model;

import java.io.Serializable;
import java.util.*;
import javax.persistence.*;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;



@Entity
@Table
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@NotEmpty(message="Enter the Email")
	@Email(message="Enter the valid Email")
    private String userEmail;
	@NotEmpty(message="Full name is Mandatory")
	private String fullName;
	
	@NotEmpty(message="Password is Mandatory")
	private String password;
	@NotEmpty(message="Address is Mandatory")
	private String address;
	
	@Pattern(regexp="[\\d]{10}",message="Please Enter 10 Digits")
	@NotEmpty(message="Phone is Mandatory")
	private String usernum;
    private String role;
	
    private boolean enabled;
    
	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private Set<Orders> orders=new HashSet<Orders>();

	

public Set<Orders> getOrders() {
	return orders;
}

public void setOrders(Set<Orders> orders) {
	this.orders = orders;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getUsernum() {
	return usernum;
}

public void setUsernum(String usernum) {
	this.usernum = usernum;
}



public String getUserEmail() {
	return userEmail;
}

public void setUserEmail(String userEmail) {
	this.userEmail = userEmail;
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
