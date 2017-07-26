package com.daoImpl;

import org.hibernate.HibernateException;

import javax.persistence.Query;

import org.hibernate.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDao;
import com.model.User;


@Repository("UserDaoImpl")
public class UserDaoImpl implements UserDao
{
	   //Autowired is a process which is used to create a single instance of the class and bind it to your dispatcher servlet
	                                              // if we not give autowired than we write seperately beans in dispatcher servlet
	                                          //Autowiring is the used to create the singleton class means there are not have multiple instances
	@Autowired
	SessionFactory sessionFactory;   //sessionFactory is a class we can create the instance of that class 
	                                 
	 
	public  UserDaoImpl(SessionFactory sessionFactory){ //we can autowired by constructor and by its  name also 
		super();
		this.sessionFactory = sessionFactory;
	}
	
	public void insertUser(User user) { //User is the component entity table that is write in User(modal class)  and small user is object of modal class. 

		

		Session session=sessionFactory.openSession();//sessionFactory is call the openSession() method..open the new session of h2 db              //getCurrent session get the instance of the current ongoing session
		session.beginTransaction();//one the session is open transaction begin(that means i will be able to send the data to the db and the set data from the db through dao) 
		
		
		session.saveOrUpdate(user);//performing the transaction  ..update etc
		session.getTransaction().commit();  //commit() ..close the session
	}
	
	
	    	
	    }













//SessionFactory is a factory class for Session objects. It is available for the whole application while a session is only available for particular transaction.

//Session is short lived while SessionFactory objects are long lived. SessionFactory provides a second level cache and Session provides a first level cache.