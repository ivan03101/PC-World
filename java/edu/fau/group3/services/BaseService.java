package edu.fau.group3.services;

import org.springframework.jdbc.core.JdbcTemplate;


import java.util.List;

import javax.sql.DataSource;


public abstract class BaseService<T> {
	
	protected JdbcTemplate jdbcTemplate;

	public BaseService(DataSource dataSource){
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		}
	
	public abstract T getByID(int ID);

	public abstract List<T> getByBrand(String Brand);
	
	public abstract List<T> getByPrice(int Price);
	
	public abstract List<T> getByUserName(String UserName);

	public abstract List<T> getAll();

	public abstract boolean create(T t);

	public abstract boolean update(T t);

	public abstract boolean delete(int ID);

	
}
