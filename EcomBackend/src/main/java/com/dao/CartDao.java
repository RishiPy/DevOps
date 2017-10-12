package com.dao;

import com.model.Cart;

public interface CartDao {
	public void insertCart(Cart c);
	public Cart getCartByUser(String userId);

}
