package edu.fau.group3.services;
import edu.fau.group3.model.*;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class MemoryMapper implements RowMapper<Memory_Table>{

	@Override
	public Memory_Table mapRow(ResultSet rs, int rowNum) throws SQLException {
		Memory_Table comp = new Memory_Table();
		comp.setMemoryId(rs.getInt(1));
		comp.setBrand(rs.getString(2));
		comp.setMemory(rs.getString(3));
		comp.setPrice(rs.getInt(4));
		return comp;
	}
}
