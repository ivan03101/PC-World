package edu.fau.group3.services;
import edu.fau.group3.model.*;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;



public class LoginMapper implements RowMapper<Login_Table> {

	public Login_Table mapRow(ResultSet rs, int rowNum) throws SQLException {
		Login_Table d = new Login_Table();
		d.setUserId(rs.getInt(1));
		d.setUserName(rs.getString(2));
		d.setPassWord(rs.getString(3));
		d.setEmail(rs.getString(4));
		return d;
	}
}
