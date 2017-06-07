package com.niit.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table
public class Supplier implements Serializable {
	
	
	private static final long serialVersionUID = 1L;
	@Id
	private int supplierId;
	private String supplierName;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "supplier")
	private Set<Product> products;
	

	
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	
	
	

}
