package com.daoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.OrdersDao;
import com.model.Orders;

@Repository
@Transactional
public class OrdersDaoImpl implements OrdersDao {

	@Autowired
	SessionFactory sessionfactory;
	public void addOrder(Orders order) {
		sessionfactory.getCurrentSession().save(order);
		
		
	}

}
