package com.dao;

import java.util.List;

import com.model.Supplier;

public interface SupplierDao {
	public void insertSupplier(Supplier supplier);
	public List<Supplier> supplierList(); 
	public Supplier getSupplierById(int sid);
	

}
