package edu.fau.group3.services;
import edu.fau.group3.model.*;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class CaseMapper implements RowMapper<Case_Table>{

	@Override
	public Case_Table mapRow(ResultSet rs, int rowNum) throws SQLException {
		Case_Table comp = new Case_Table();
		comp.setCaseId(rs.getInt(1));
		comp.setBrand(rs.getString(2));
		comp.setcaseType(rs.getString(3));
		comp.setPrice(rs.getInt(4));
		return comp;
	}
}
