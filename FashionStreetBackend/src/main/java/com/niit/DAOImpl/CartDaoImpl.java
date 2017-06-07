package com.niit.DAOImpl;



import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.CartDao;
import com.niit.model.Cart;


@Repository
@Transactional
public class CartDaoImpl implements CartDao {
	@Autowired
	SessionFactory sessionFactory;

	public void insert(Cart cart) {

		Session session=sessionFactory.openSession();
		session.beginTransaction();
   		session.persist(cart);
		
		session.getTransaction().commit();
		
		
	}
	
	
	public List<Cart> findCartById(String userId){
		
		Session session=sessionFactory.openSession();
		List<Cart> p=null;
		try{
			session.beginTransaction();
		
		
		p=	(List<Cart>) session.createQuery(" from Cart where userMailId = :email")
	           .setString("email", userId).list();
			session.getTransaction().commit();
			
			
		}catch(HibernateException ex){
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		return  p;
	
		
		
		
	}
	
	public Cart getCartItem(int pid,String  userId)
	   {
	    Session session = sessionFactory.openSession();
	    Cart c=null;
	    c=(Cart)session.createQuery("from Cart where userMailId=:mailid and cartProductId=:id")
	    .setString("mailid",userId).setInteger("id", pid).uniqueResult();
	    return c;
	   }
	  public void updateCart(Cart cart)
	   {
	    Session session = sessionFactory.openSession();
	       session.beginTransaction();
	       session.update(cart);
	       session.getTransaction().commit();
	   }

	public void delete(int cartId) {
	Session session = sessionFactory.openSession();
	        session.beginTransaction();
	        Cart deletec=(Cart)session.get(Cart.class, cartId);
	        session.delete(deletec);
	        session.getTransaction().commit();
	}
	
	
	
	
 
	  
}