package edu.fau.group3.services;

import edu.fau.group3.model.*;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class StorageMapper implements RowMapper<Storage_Table>{

	@Override
	public Storage_Table mapRow(ResultSet rs, int rowNum) throws SQLException {
		Storage_Table comp = new Storage_Table();
		comp.setStorage_Id(rs.getInt(1));
		comp.setBrand(rs.getString(2));
		comp.setStorageType(rs.getString(3));
		comp.setPrice(rs.getInt(4));
		return comp;
	}
}

