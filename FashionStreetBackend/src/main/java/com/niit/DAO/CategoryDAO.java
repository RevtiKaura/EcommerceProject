package com.niit.DAO;

import java.util.List;

import com.niit.model.*;

public interface CategoryDAO {
	 public List<Category> getCategoryList();
	  public Category getCategoryById(Integer id);
	  public void insertCategory(Category p);
	  public void deleteCategoryById(int catid);
	  public void updateCategory(Category c);
}
