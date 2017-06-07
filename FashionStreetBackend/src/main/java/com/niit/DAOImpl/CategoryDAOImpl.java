package com.niit.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.CategoryDAO;
import com.niit.model.Category;

@Repository
@Transactional
public class CategoryDAOImpl implements CategoryDAO{

	@Autowired
	private SessionFactory session;
	
	public List<Category> getCategoryList() {
		Session ssn=session.openSession();
		ssn.beginTransaction();
		List<Category> list=ssn.createQuery("from Category").list();
		ssn.getTransaction().commit();
		return list;
	}

	public Category getCategoryById(Integer id) {
		Session ssn=session.openSession();
		Category p=null;
		try{
			ssn.beginTransaction();
		 p=	ssn.get(Category.class, id);
		ssn.getTransaction().commit();
			
			
		}catch(HibernateException ex){
			ex.printStackTrace();
			ssn.getTransaction().rollback();
		}
		return p;
	}

	public void insertCategory(Category p) {
		Session ses=session.openSession();
		ses.beginTransaction();
		ses.persist(p);
		ses.getTransaction().commit();
	}

	public void deleteCategoryById(int catid) {
		// TODO Auto-generated method stub
		
	}

	public void updateCategory(Category c) {
		// TODO Auto-generated method stub
		
	}
}
