package com.niit.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Supplier;

@Repository
@Transactional
public class SupplierDAOImpl implements SupplierDAO {

	@Autowired
	private SessionFactory session;
	public List<Supplier> getSupplierList() {
		Session ssn=session.openSession();
		ssn.beginTransaction();
		List<Supplier> list=ssn.createQuery("from Supplier").list();
		ssn.getTransaction().commit();
		return list;
	}

	public Supplier getSupplierById(Integer id) {
		Session ssn=session.openSession();
		Supplier p=null;
		try{
			ssn.beginTransaction();
		 p=	ssn.get(Supplier.class, id);
		ssn.getTransaction().commit();
			
			
		}catch(HibernateException ex){
			ex.printStackTrace();
			ssn.getTransaction().rollback();
		}
		return p;
	}


	public void insertSupplier(Supplier p) {
		Session ses=session.openSession();
		ses.beginTransaction();
		ses.persist(p);
		ses.getTransaction().commit();
		
	}

	public void deleteSupplierById(int supplierId) {
		// TODO Auto-generated method stub
		
	}

	public void updateSupplier(Supplier p) {
		// TODO Auto-generated method stub
		
	}

}
