package com.niit.DAO;

import com.niit.model.User;

public interface UserDAO {

	 public void insertUser(User u);
	 public User findbyUserId(String id);
}
