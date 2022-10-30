package edu.fau.group3.services;
import java.util.List;

import javax.sql.DataSource;
import edu.fau.group3.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class LoginService extends BaseService<Login_Table>{
	
	@Autowired
	public LoginService(DataSource datasource){
		super(datasource);
	}

	@Override
	public Login_Table getByID(int ID) {
		String sql="select * from Login_Table where User_ID=?";
		
			return jdbcTemplate.queryForObject(sql, new Object[]{ID}, new LoginMapper());
		
	}

	@Override
	public List<Login_Table> getByUserName(String UserName) {
		String sql="select * from Login_Table where Username=?";
		return null;
	}

	@Override
	public List<Login_Table> getAll() {
		String sql = "select * from Login_Table";
		return jdbcTemplate.query(sql, new LoginMapper());
	}   

	@Override
	public boolean create(Login_Table e) {
		String sql = "insert into Login_Table (Username, Password, Email)"
				+ "values (?, ?, ?)";
		
		return jdbcTemplate.update(sql, e.getUserName(), e.getPassWord(), e.getEmail())>0;
	}

	@Override
	public boolean update(Login_Table e) {
		String sql = "UPDATE Login_Table SET Username=?, Password=?, Email=? WHERE User_ID=?";
		return jdbcTemplate.update(sql, e.getUserName(), e.getPassWord(), e.getEmail(), e.getUserId()) > 0;
	}

	@Override
	public boolean delete(int id) {
		String query = "DELETE FROM Login_Table WHERE User_ID=?";
		return jdbcTemplate.update(query, id) > 0;
	}

	@Override
	public List<Login_Table> getByBrand(String Brand) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Login_Table> getByPrice(int Price) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}