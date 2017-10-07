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
public class ProductDaoImpl implements ProductDao{

	@Autowired
	SessionFactory sessionFactory;
	
	public void saveProduct(Product p) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.save(p);
		ssn.getTransaction().commit();
		
		
		
	}

	@Transactional
	public List<Product> productList() {
		Session session=sessionFactory.openSession();
		List<Product> list=session.createQuery("from Product").list();
		return list;
		
	}

public void deleteProduct(int id) {
		
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
	    sess.beginTransaction();
	    Product pro=(Product)sess.load(Product.class,id);
	   sess.delete(pro);
	    sess.getTransaction().commit();
	
		
	}

	
	public void updateProduct(Product p) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(p);
		session.getTransaction().commit();
		
	}
	@Transactional
	public Product getProductById(int id) {
		Session session=sessionFactory.openSession();
		Product p=session.load(Product.class, id);
		return p;
	}
	
	
	@Transactional
	public List<Product> custprolist(int cid) {
		Session session=sessionFactory.openSession();
		List<Product> cplist=session.createQuery("from Product where cid="+cid).list();
		return cplist;
		
	}
	@Transactional
	public Product productDescription(int pid) {
		Session sess=sessionFactory.openSession();
		Product p=sess.get(Product.class, pid);
		return p;
	}

	
	
	
	
	
	
	
	
	

 
	
}
