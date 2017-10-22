package com.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.SupplierDao;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;

@Repository
public class SupplierDaoImpl implements SupplierDao {

	
	@Autowired
	SessionFactory sessionFactory;


	public void insertSupplier(Supplier supplier) {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.save(supplier);
		ssn.getTransaction().commit();
		
		
	}


	public List<Supplier> supplierList() {
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		List<Supplier> list=ssn.createQuery("from Supplier").list();
		ssn.getTransaction().commit();
		
		return list;
		
	}


	public Supplier getSupplierById(int sid) {
		Session session=sessionFactory.openSession();
		Transaction t=session.getTransaction();
		t.begin();
		Supplier s=session.get(Supplier.class, sid);
		session.getTransaction().commit();
		return s;
		
	}


	


	public void deletesupplier(int sid) {
		Session session=sessionFactory.openSession();
		Transaction t=session.getTransaction();
		t.begin();
		 Supplier sup=(Supplier)session.load(Supplier.class,sid);
		   session.delete(sup);
		
		session.getTransaction().commit();
		
		
	}
	
	
	
	
	
	

}
