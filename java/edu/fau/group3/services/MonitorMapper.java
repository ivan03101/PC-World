package edu.fau.group3.services;
import edu.fau.group3.model.*;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class MonitorMapper implements RowMapper<Monitor_Table>{

	@Override
	public Monitor_Table mapRow(ResultSet rs, int rowNum) throws SQLException {
		Monitor_Table comp = new Monitor_Table();
		comp.setMonitorId(rs.getInt(1));
		comp.setBrand(rs.getString(2));
		comp.setMonitorType(rs.getString(3));
		comp.setPrice(rs.getInt(4));
		return comp;
	}
}
