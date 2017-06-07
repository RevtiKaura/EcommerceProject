package com.niit.config;


import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.model.Product;
 
@Configuration
@ComponentScan("com.niit" )
@EnableTransactionManagement

public class HibernateConfig {

	/*
	
Select H2 Generic Server in H2 data base than you'll get the your
Driver class will available in H2 console
	  */

		
	
		/* 
		 it'll return the sessionFactory Object
		 */
	
	

	@Autowired
    @Bean(name="datasource")
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.h2.Driver");
        dataSource.setUrl("jdbc:h2:tcp://localhost/~/FashionApp");
        dataSource.setUsername("sa");	        
        dataSource.setPassword("");
        return dataSource;
    }
    
	
	
	private Properties hibernateProperties() {
        Properties properties = new Properties();
        properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect"); 
        properties.put("hibernate.show_sql", "true");
        properties.put("hibernate.format_sql", "true");
        properties.put("hibernate.hbm2ddl.auto", "update");
        return properties;        
    }
    
		@Autowired
	    @Bean(name="sessionFactory")
	    public SessionFactory sessionFactory(DataSource dataSource) {
	        LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource);	        
	        builder.addProperties(hibernateProperties());
	        builder.scanPackages("com.niit.model");
	      //  builder.addAnnotatedClasses(Product.class);
	        return builder.buildSessionFactory();
	     }
	
		/* 
		 it'll give the DataSource  object to SessionFactory
		 */
 
		 
	   
		 
		/* 
		it's responsible to manage all type of transactions
		 */
	    @Autowired
	    @Bean(name="transactionManager")
	    public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
	       HibernateTransactionManager txManager = new HibernateTransactionManager();
	       txManager.setSessionFactory(sessionFactory);
	       return txManager;
	    }
	}