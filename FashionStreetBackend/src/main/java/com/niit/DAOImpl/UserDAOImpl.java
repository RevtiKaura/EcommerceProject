package com.niit.DAOImpl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.UserDAO;
import com.niit.model.User;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SessionFactory session;
	public void insertUser(User u) {
	
		session.getCurrentSession().persist(u);
	}

}
