package com.model;
import java.io.Serializable;
import java.util.*;
import javax.persistence.*;


import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@SuppressWarnings("unused")
@Component
@Entity    //it should automatically create the table through HIBERNATE
//@Table(name="User")
public class User implements Serializable {
	
	private static final long serialVersionUID =1L;
	
	
 @Id                               //without this HIBERNATE cannot create a table// primary key is compulsory in any variable
 private String id;
 private String first_name;
 private String last_name;
 private String email;
 private String password;
 private String role;  //  during spring security //it will be assigned in controller
 private String phone;
 private String address;
 
 public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}


 
 public String getRole() {
	return role;
}

public void setRole(String role) {
	this.role = role;
}

public String getFirst_name() {
	return first_name;
}

public void setFirst_name(String first_name) {
	this.first_name = first_name;
}

public String getLast_name() {
	return last_name;
}

public void setLast_name(String last_name) {
	this.last_name = last_name;
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


 
	
}
