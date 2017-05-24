package com.models;

public class Product {
int productId,price,quantity;
String productName,brand,description,category,supplier;


public int getProductId() {
	return productId;
}

public Product(int productId, String productName, String brand, String category,String description,int price, int quantity,
		 String supplier) {
	super();
	this.productId = productId;
	this.price = price;
	this.quantity = quantity;
	this.productName = productName;
	this.brand = brand;
	this.description = description;
	this.category = category;
	this.supplier = supplier;
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
public String getBrand() {
	return brand;
}
public void setBrand(String brand) {
	this.brand = brand;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getSupplier() {
	return supplier;
}
public void setSupplier(String supplier) {
	this.supplier = supplier;
}

}
