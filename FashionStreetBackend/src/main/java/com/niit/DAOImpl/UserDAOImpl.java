package com.niit.DAOImpl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.UserDAO;
import com.niit.model.User;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SessionFactory sessionfactory;
	public void insertUser(User u) {
	
		sessionfactory.getCurrentSession().persist(u);
	}
	public User findbyUserId(String id) {
		Session ssn=sessionfactory.openSession();
		User p=null;
		ssn.beginTransaction();
		p=ssn.get(User.class,id);
		ssn.getTransaction().commit();
		return p;
	}

}
