package com.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CartDao;
import com.model.Cart;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {
	@Autowired
	SessionFactory sessionFactory;

	public Cart getCartByUser(String userId) {
		
		return null;
	}

	public void insertCart(Cart c) {
	
		Session ssn=sessionFactory.openSession();
		ssn.save(c);
		
	}
	

}
