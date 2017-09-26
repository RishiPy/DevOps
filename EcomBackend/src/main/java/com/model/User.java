package com.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
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
	@NotEmpty @Email 
	//@Pattern(regexp=".+@.+\\..+", message="Wrong email!")
	private String email;
	
	@NotEmpty
	@Size(min=2, max=30 , message="Your name should be between 2 - 30 characters.")
	private String name;
	
	@NotEmpty

	private String password;
	
	@NotEmpty

	private String address;
	
	
                             
	  
	
	 @Length(max=10,min=10)
	//@Pattern(regexp="(^$|[0-9]{10})")     //This annotation can be used when we want to chack a field against a regular expression. The regex is set as an attribute to the annotation.
	private String phone;
	
	private String role;
	private boolean enabled;
	
	@OneToMany(fetch=FetchType.EAGER,mappedBy="user")
	private Set<Orders> order=new HashSet<Orders>(0);
	
	
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
	
	

}
