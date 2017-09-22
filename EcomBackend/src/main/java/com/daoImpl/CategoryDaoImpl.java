package com.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.*;
import com.model.*;

@Repository
public class CategoryDaoImpl implements CategoryDao {
	
	
	@Autowired
	SessionFactory sessionFactory;

	public void insertCategory(Category category) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.save(category);
		ssn.getTransaction().commit();
		
		
		
	}

	
	
	
}
