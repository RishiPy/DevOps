package com.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table
public class Cart {
	@Id
	@GeneratedValue
	private int cartid;
	private long totalItems;
	private double finalAmount;
	private String cartProductName;
	private String cartProductDescription;
	private int productId;
	private double price;
	
	
	    

	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="usermailId")
	private User user;



	public int getCartid() {
		return cartid;
	}



	public void setCartid(int cartid) {
		this.cartid = cartid;
	}



	public long getTotalItems() {
		return totalItems;
	}



	public void setTotalItems(long totalItems) {
		this.totalItems = totalItems;
	}



	public double getFinalAmount() {
		return finalAmount;
	}



	public void setFinalAmount(double finalAmount) {
		this.finalAmount = finalAmount;
	}



	public String getCartProductName() {
		return cartProductName;
	}



	public void setCartProductName(String cartProductName) {
		this.cartProductName = cartProductName;
	}



	public String getCartProductDescription() {
		return cartProductDescription;
	}



	public void setCartProductDescription(String cartProductDescription) {
		this.cartProductDescription = cartProductDescription;
	}



	public int getProductId() {
		return productId;
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



	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}
	
	
	


	
}
