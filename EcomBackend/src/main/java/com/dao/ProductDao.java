package com.dao;

import java.util.List;

import com.model.Product;

public interface ProductDao {
	public void saveProduct(Product p);
    public List<Product> productList();
    public void deleteProduct(int id);
    public void updateProduct(Product p);
    public Product getProductById(int id);     //whenever we are doing any kind of mapping with a particular product id then we use this method
    public List<Product> custprolist(int cid); 
    public Product productDescription(int pid);

}
