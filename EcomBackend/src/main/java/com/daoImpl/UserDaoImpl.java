package com.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDao;
import com.model.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFactory;

	
	
	public void saveUser(User user) {
		Session ssn=sessionFactory.openSession();  
		ssn.beginTransaction();
		ssn.save(user);
		ssn.getTransaction().commit();  
		
	}


	public User getUserById(int uid) {
		Session ssn=sessionFactory.openSession();
		ssn.beginTransaction();
		User u=(User)ssn.load(User.class,uid);    
		ssn.getTransaction().commit();
		//ssn.close();
		
		
		return u;
	}


	public User getUserByName(String uname) {
		
		User u=(User)sessionFactory.getCurrentSession().get(User.class,uname);
		return u;
	}


		
		
		
		
	

}

