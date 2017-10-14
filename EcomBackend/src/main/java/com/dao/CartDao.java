package com.dao;

import java.util.List;

import com.model.Cart;

public interface CartDao {
	public void insertCart(Cart c);
	
	public void deleteCartItem(int cartid);
	public void updateCartItem(Cart c);
	public List<Cart> findCartList(String usermail);
	public Cart getCartById(int cartId);
	public Cart getCartItem(int pid,String userid);
	

}
