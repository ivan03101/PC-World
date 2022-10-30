package edu.fau.group3.services;
import edu.fau.group3.model.*;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class MotherboardMapper implements RowMapper<Motherboard_Table>{

	@Override
	public Motherboard_Table mapRow(ResultSet rs, int rowNum) throws SQLException {
		Motherboard_Table comp = new Motherboard_Table();
		comp.setMotherboardId(rs.getInt(1));
		comp.setBrand(rs.getString(2));
		comp.setMotherboardType(rs.getString(3));
		comp.setPrice(rs.getInt(4));
		return comp;
	}
 

}
