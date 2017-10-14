package com.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.model.Product;

@SuppressWarnings("unchecked")
@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{

	@Autowired
	SessionFactory sessionFactory;
	
	public void saveProduct(Product p) {
		Session sess=sessionFactory.openSession();
	    sess.beginTransaction();
		sess.save(p);
	    sess.getTransaction().commit();
		
	}

	
	public List<Product> productList() {
		Session sess=sessionFactory.openSession();
	    sess.beginTransaction();
		List<Product> list=sess.createQuery("from Product").list();
	    sess.getTransaction().commit();
		return list;
		
	}

public void deleteProduct(int id) {
		
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
	    sess.beginTransaction();
	    Product pro=(Product)sess.load(Product.class,id);
	   sess.delete(pro);
	    sess.getTransaction().commit();
	   // sess.close();
	
		
	}

	public void updateProduct(Product p) {
		Session sess=sessionFactory.openSession();
	    sess.beginTransaction();
		sess.update(p);
	    sess.getTransaction().commit();

		//session.close();
		
	}
	
	public Product getProductById(int id) {
	
		Product p=sessionFactory.getCurrentSession().get(Product.class, id);
		return p;
	}
	
	
	public List<Product> custprolist(int cid) {
		Session ssn=sessionFactory.openSession();
		ssn.beginTransaction();
		List<Product> cplist=ssn.createQuery("from Product where cid="+cid).list();
		ssn.getTransaction().commit();
		return cplist;
		
	}
	
	public Product productDescription(int pid) {
		Session ssn=sessionFactory.openSession();
		ssn.beginTransaction();
		Product p=ssn.get(Product.class, pid);
		ssn.getTransaction().commit();
		return p;
	}

	
	
	
	
	
	
	
	
	

 
	
}
