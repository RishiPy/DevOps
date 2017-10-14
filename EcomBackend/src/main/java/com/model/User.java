package com.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Component
@Entity
public class User {
	
	@Id 
	@NotEmpty(message="enter the email")
	@Email (message="enter the valid email ")
	//@Pattern(regexp=".+@.+\\..+", message="Wrong email!")
	private String email;
	
	@GeneratedValue
	private int uid;
	
	
	
	@NotEmpty(message="enter the name")

	private String name;
	

	@NotEmpty(message="password is null")
	private String password;
	

	@NotEmpty(message="address cannot be empty")
	private String address;
	

	@NotEmpty(message="enter phone number")
	@Pattern(regexp="(^$|[0-9]{10})",message="please enter correct digits")     //This annotation can be used when we want to chack a field against a regular expression. The regex is set as an attribute to the annotation.
	private String phone;
	
	private String role;
	private boolean enabled;
	
	@OneToMany(fetch=FetchType.LAZY,mappedBy="user")
	private Set<Orders> order=new HashSet<Orders>(0);
	
	@OneToOne(fetch=FetchType.EAGER,mappedBy="user")
	private Cart cart;
	
	
	
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public Set<Orders> getOrder() {
		return order;
	}
	public void setOrder(Set<Orders> order) {
		this.order = order;
	}
	

	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	

	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}

}
