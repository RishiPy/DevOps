package com.model;


import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Orders {
	
	
	@Id
	@GeneratedValue
	private int oid;
	private double totalamt;
	private String paymentType;
	
	

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="email")
	private User user;
	
	

	
	public int getOid() {
		return oid;
	}



	public void setOid(int oid) {
		this.oid = oid;
	}



	public double getTotalamt() {
		return totalamt;
	}



	public void setTotalamt(double totalamt) {
		this.totalamt = totalamt;
	}



	public String getPaymentType() {
		return paymentType;
	}



	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}



	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



		

}
