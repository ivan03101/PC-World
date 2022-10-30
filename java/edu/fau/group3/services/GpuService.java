package edu.fau.group3.services;

import java.util.List;


import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group3.model.GPU_Table;

@Component
public class GpuService extends BaseService<GPU_Table>{
	
	@Autowired
	public GpuService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public GPU_Table getByID(int ID) {
		String sql = "SELECT * FROM GPU_Table where GPU_ID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{ID}, new GpuMapper());
			} catch (EmptyResultDataAccessException ex) {
			return null;
			}
	}


	@Override
	public List<GPU_Table> getByBrand(String Brand) {
		String sql = "Select * from GPU_Table where Brand = ?";
		
		return jdbcTemplate.query(sql, new Object[] {Brand}, new GpuMapper());
	}

	@Override
	public List<GPU_Table> getAll() {
		String sql = "select * from GPU_Table";
		/* 1. Run query
		 * 2. For each result call rowMapper.mapRow()
		 * 3. Add to the list the result of mapRow()  (Employee object)
		 * 4. Return list
		 */
		return jdbcTemplate.query(sql, new GpuMapper());

	}

	@Override
	public boolean create(GPU_Table t) {
		String sql = "insert into GPU_Table (GPU_ID, Brand, GPU, Price)"
				+ "values (?, ?, ?, ?)";
				return jdbcTemplate.update(sql, t.getGPU_ID(), t.getBrand(), t.getGPUType(), t.getPrice())>0;
	}

	@Override
	public boolean update(GPU_Table t) {
		String sql = "UPDATE GPU_Table SET GPU_ID=?, Brand=?, GPU=?, Price=?, WHERE GPU_ID =?";
		return jdbcTemplate.update(sql, t.getGPU_ID(), t.getBrand(), t.getGPUType(), t.getPrice())>0;
	}

	@Override
	public boolean delete(int ID) {
		String query = "DELETE FROM GPU_Table WHERE GPU_ID=?";
		return jdbcTemplate.update(query, ID) > 0;
	}

	@Override
	public List<GPU_Table> getByPrice(int Price) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<GPU_Table> getByUserName(String UserName) {
		// TODO Auto-generated method stub
		return null;
	}	

}
