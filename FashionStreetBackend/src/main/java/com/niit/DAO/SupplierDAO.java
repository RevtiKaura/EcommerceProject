package com.niit.DAO;

import java.util.List;

import com.niit.model.Supplier;

public interface SupplierDAO {

	public List<Supplier> getSupplierList();
	  public Supplier getSupplierById(Integer id);
	  public void insertSupplier(Supplier p);
	  public void deleteSupplierById(int supplierId);
	  public void updateSupplier(Supplier p);
}
