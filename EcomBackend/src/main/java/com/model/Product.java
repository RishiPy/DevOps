package com.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
@Entity
public class Product {

	@Id
	@GeneratedValue
	private int id;
	private String productName;
	private int productQuantity; 
	private String productDesc;
	private double productPrice;
	
	
	@Transient
	private MultipartFile pImage;
	

	

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="sid")
	private Supplier supplier;
	
	@ManyToOne(fetch=FetchType.LAZY)   
	@JoinColumn(name="cid")
	private Category category;
	
	
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public Supplier getSupplier() {
		return supplier;
	}
	
	public int getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public MultipartFile getpImage() {
		return pImage;
	}
	public void setpImage(MultipartFile pImage) {
		this.pImage = pImage;
	}
	
	
	
	



}
