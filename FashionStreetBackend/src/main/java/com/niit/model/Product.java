package com.niit.model;

import java.io.Serializable;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;


@Entity
@Table
public class Product implements Serializable {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
public static long getSerialversionuid() {
	return serialVersionUID;
}
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
int productId;
double price;
int quantity;//stock

String productName;
String description;
String imgName;


@ManyToOne(fetch = FetchType.LAZY)
@JoinColumn(name = "supplierId", nullable = false)
private Supplier supplier;

@ManyToOne(fetch = FetchType.LAZY)
@JoinColumn(name = "categoryId", nullable = false)
private Category category;

@Transient	
MultipartFile file;

public MultipartFile getFile() {
	return file;
}
public void setFile(MultipartFile file) {
	this.file = file;
}


public String getImgName() {
	return imgName;
}
public void setImgName(String imgName) {
	this.imgName = imgName;
}
public Supplier getSupplier() {
	return supplier;
}
public void setSupplier(Supplier supplier) {
	this.supplier = supplier;
}




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

public void setProductId(int productId) {
	this.productId = productId;
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
