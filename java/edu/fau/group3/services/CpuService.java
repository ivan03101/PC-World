package edu.fau.group3.services;

import java.util.List;



import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group3.model.CPU_Table;


@Component
public class CpuService extends BaseService<CPU_Table> {

	@Autowired
	public CpuService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public CPU_Table getByID(int ID) {
		String sql = "SELECT * FROM CPU_Table where CPU_ID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{ID}, new CpuMapper());
			} catch (EmptyResultDataAccessException ex) {
			return null;
			}
	}


	@Override
	public List<CPU_Table> getByBrand(String Brand) {
		String sql = "Select * from CPU_Table where Brand = ?";
		
		return jdbcTemplate.query(sql, new Object[] {Brand}, new CpuMapper());
	}

	@Override
	public List<CPU_Table> getAll() {
		String sql = "select * from CPU_Table";
		/* 1. Run query
		 * 2. For each result call rowMapper.mapRow()
		 * 3. Add to the list the result of mapRow()  (Employee object)
		 * 4. Return list
		 */
		return jdbcTemplate.query(sql, new CpuMapper());

	}

	@Override
	public boolean create(CPU_Table t) {
		String sql = "insert into CPU_Table (CPU_ID, Brand, CPU, Price)"
				+ "values (?, ?, ?, ?)";
				return jdbcTemplate.update(sql, t.getcpu_Id(), t.getBrand(), t.getCPUType(), t.getPrice())>0;
	}

	@Override
	public boolean update(CPU_Table t) {
		String sql = "UPDATE CPU_Table SET CPU_ID=?, Brand=?, CPU=?, Price=? WHERE CPU_ID=?";
		return jdbcTemplate.update(sql, t.getcpu_Id(), t.getBrand(), t.getCPUType(), t.getPrice(), t.getcpu_Id())>0;
	}

	@Override
	public boolean delete(int ID) {
		String query = "DELETE FROM CPU_Table WHERE CPU_ID=?";
		return jdbcTemplate.update(query, ID) > 0;
	}

	@Override
	public List<CPU_Table> getByPrice(int Price) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CPU_Table> getByUserName(String UserName) {
		// TODO Auto-generated method stub
		return null;
	}	

}
