package edu.fau.group3.services;
import edu.fau.group3.model.*;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class PsuMapper implements RowMapper<PSU_Table>{

	@Override
	public PSU_Table mapRow(ResultSet rs, int rowNum) throws SQLException {
		PSU_Table comp = new PSU_Table();
		comp.setPsuId(rs.getInt(1));
		comp.setBrand(rs.getString(2));
		comp.setPsuType(rs.getString(3));
		comp.setPrice(rs.getInt(4));
		return comp;
	}
}
