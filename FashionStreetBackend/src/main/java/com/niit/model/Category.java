package com.niit.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table
public class Category implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(unique = true, nullable = false)
	private int categoryId;
	private String categoryName;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "category")
	private Set<Product> products;
	

	

	
	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	
	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
