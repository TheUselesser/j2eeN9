package com.j2eeN9.backend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages= {"com.j2eeN9.backend.dto"})
@EnableTransactionManagement
public class HibernateConfig {
	
	private final static String DB_URL = "jdbc:h2:tcp://localhost/~/DumaciaShop";
	private final static String DB_DRIVER = "org.h2.Driver";
	private final static String DB_USERNAME = "sa";
	private final static String DB_PASSWORD = "";
	private final static String DB_DIALECT = "org.hibernate.dialect.H2Dialect";
	
	@Bean("dataSource")
	public DataSource getDataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		
		dataSource.setUrl(DB_URL);
		dataSource.setDriverClassName(DB_DRIVER);
		dataSource.setUsername(DB_USERNAME);
		dataSource.setPassword(DB_PASSWORD);
		
		return dataSource;
	}
	
	@Bean
	public SessionFactory getSessionFactory(DataSource dataSource) {
		
		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource);
		
		builder.addProperties(getHibernateProperties());
		builder.scanPackages("com.j2eeN9.backend.dto");
		
		return builder.buildSessionFactory();
		
	}

	private Properties getHibernateProperties() {
		// TODO Auto-generated method stub
		Properties properties = new Properties();
		
		properties.put("hibernate.dialect", DB_DIALECT);
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.format_sql", "true");
		
		return properties;
	}
	
	@Bean
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}
}
