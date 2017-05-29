package com.niit.model;

import java.io.Serializable;

import javax.persistence.*;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.multipart.MultipartFile;

import com.niit.model.*;

@Entity
@Table(name="ProductDetails")
//@ComponentScan(basePackages="com.niit")
public class Product implements Serializable {
@Id
@Column(name="ProductId")
int productId;
@Column(name="Price")
int price;
@Column(name="Quantity")
int quantity;
@Column(name="ProductName")
String productName;
@Column(name="Description")
String description;

@Transient	
MultipartFile file;

public MultipartFile getFile() {
	return file;
}
public void setFile(MultipartFile file) {
	this.file = file;
}

@ManyToOne(fetch = FetchType.LAZY)
@JoinColumn(name = "S_ID", nullable = false)
private Supplier supplier;

public Supplier getSupplier() {
	return supplier;
}
public void setSupplier(Supplier supplier) {
	this.supplier = supplier;
}

@ManyToOne(fetch = FetchType.LAZY)
@JoinColumn(name = "C_ID", nullable = false)
private Category category;


public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}
public int getProductId() {
	return productId;
}
public Product()
{
	
}



public Product(int productId, int price, int quantity, String productName, String description, Supplier supplier,
		Category category) {
	super();
	this.productId = productId;
	this.price = price;
	this.quantity = quantity;
	this.productName = productName;
	this.description = description;
	this.supplier = supplier;
	this.category = category;
}
public void setProductId(int productId) {
	this.productId = productId;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}

public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}



}
