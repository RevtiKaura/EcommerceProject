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
@Table(name="SupplierDetails")
public class Supplier implements Serializable {
	
	
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="SupplierId")
	private int supplierId;
	private String supplierName;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "productId")
	private Set<Product> products = new HashSet<Product>(0);
	
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
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
