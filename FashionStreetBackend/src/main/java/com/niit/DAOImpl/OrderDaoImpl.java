package com.niit.DAOImpl;


import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.OrdersDao;
import com.niit.model.Orders;


@Repository
@Transactional
public class OrderDaoImpl implements OrdersDao{

	@Autowired
	SessionFactory sessionFactory;


	public void addOrder(Orders order) {

		Session session=sessionFactory.openSession();
		session.beginTransaction();
         
		session.saveOrUpdate(order);
		session.getTransaction().commit();
		
	}

}
