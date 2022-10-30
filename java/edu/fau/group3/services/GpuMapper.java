package edu.fau.group3.services;
import edu.fau.group3.model.*;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class GpuMapper implements RowMapper<GPU_Table>{
	
	@Override
	public GPU_Table mapRow(ResultSet rs, int rowNum) throws SQLException {
		GPU_Table gpu = new GPU_Table();
		gpu.setGPU_ID(rs.getInt(1));
		gpu.setBrand(rs.getString(2));
		gpu.setGPUType(rs.getString(3));
		gpu.setPrice(rs.getInt(4));
		return gpu;
	}

}
