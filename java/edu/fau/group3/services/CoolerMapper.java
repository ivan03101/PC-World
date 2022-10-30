package edu.fau.group3.services;
import edu.fau.group3.model.*;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class CoolerMapper implements RowMapper<Cooler_Table>{

	@Override
	public Cooler_Table mapRow(ResultSet rs, int rowNum) throws SQLException {
		Cooler_Table comp = new Cooler_Table();
		comp.setCoolerId(rs.getInt(1));
		comp.setBrand(rs.getString(2));
		comp.setCoolerType(rs.getString(3));
		comp.setPrice(rs.getInt(4));
		return comp;
	}

}
