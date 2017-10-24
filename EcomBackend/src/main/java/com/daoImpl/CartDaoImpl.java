package com.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CartDao;
import com.model.Cart;

@Repository
@SuppressWarnings("deprecation")
@Transactional
public class CartDaoImpl implements CartDao {
	@Autowired
	SessionFactory sessionFactory;

	public void insertCart(Cart c) {
		sessionFactory.getCurrentSession().save(c);

	}

	public void deleteCartItem(int cartid) {

		Cart c = (Cart) sessionFactory.getCurrentSession().load(Cart.class, cartid);
		sessionFactory.getCurrentSession().delete(c);

	}

	public void updateCartItem(Cart c) {
		sessionFactory.getCurrentSession().update(c);

	}

	public List<Cart> findCartList(String usermail) {

		@SuppressWarnings("unchecked")
		List<Cart> list = sessionFactory.getCurrentSession().createQuery("from Cart where usermailId= :u")
				.setString("u", usermail).list();

		return list;
	}

	public Cart getCartById(int cartId) {

		Cart c = sessionFactory.getCurrentSession().get(Cart.class, cartId);

		return c;
	}

	public Cart getCartItem(int pid, String userid) {

		Cart c = (Cart) sessionFactory.getCurrentSession()
				.createQuery("from Cart where usermailId=:uid and productid=:id").setString("uid", userid)
				.setInteger("id", pid).uniqueResult();

		return c;
	}

}
