package com.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDao;
import com.model.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFactory;

	
	
	public void saveUser(User user) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.save(user);
		ssn.getTransaction().commit();
		
		
		
	}


 @Transactional
	public User getUserById(int uid) {
		Session ssn=sessionFactory.openSession();
		User u=(User) ssn.load(User.class,uid);
		
		
		return u;
	}


 @Transactional
	public User getUserByName(String uname) {
		Session ssn=sessionFactory.openSession();
		User u=(User) ssn.load(User.class,uname);
		return u;
	}


 @Transactional
	public User getUserByEmail(String uemail) {
		Session ssn=sessionFactory.openSession();
		User u=(User) ssn.load(User.class,uemail);
		return u;
	}
	
		
		
		
		
	

}
