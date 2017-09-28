package com.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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

	public List<Category> categoryList() {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		List<Category> list=ssn.createQuery("from Category").list();
		ssn.getTransaction().commit();
		
		return list;
	}

	
	public Category getCategoryById(int cid) {
		Session session=sessionFactory.openSession();
		Transaction t=session.getTransaction();
		t.begin();
		Category c=session.get(Category.class, cid);
		session.getTransaction().commit();
		return c;
	}

	


	
	
	
}
