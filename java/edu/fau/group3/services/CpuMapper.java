package edu.fau.group3.services;
import edu.fau.group3.model.*;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class CpuMapper implements RowMapper<CPU_Table>{

	@Override
	public CPU_Table mapRow(ResultSet rs, int rowNum) throws SQLException {
		CPU_Table comp = new CPU_Table();
		comp.setcpu_Id(rs.getInt(1));
		comp.setBrand(rs.getString(2));
		comp.setCPUType(rs.getString(3));
		comp.setPrice(rs.getInt(4));
		return comp;
	}
}
