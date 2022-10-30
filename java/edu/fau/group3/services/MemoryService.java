package edu.fau.group3.services;

import java.util.List;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group3.model.Memory_Table;


@Component
public class MemoryService extends BaseService<Memory_Table> {

	@Autowired
	public MemoryService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Memory_Table getByID(int ID) {
		String sql = "SELECT * FROM Memory_Table where Memory_ID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{ID}, new MemoryMapper());
			} catch (EmptyResultDataAccessException ex) {
			return null;
			}
	}


	@Override
	public List<Memory_Table> getByBrand(String Brand) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Memory_Table> getAll() {
		String sql = "select * from Memory_Table";
		/* 1. Run query
		 * 2. For each result call rowMapper.mapRow()
		 * 3. Add to the list the result of mapRow()  (Employee object)
		 * 4. Return list
		 */
		return jdbcTemplate.query(sql, new MemoryMapper());

	}

	@Override
	public boolean create(Memory_Table t) {
		String sql = "insert into Memory_Table (Memory_ID, Brand, Memory_Type, Price)" 
				+ "values (?, ?, ?, ?, ?)";
		return jdbcTemplate.update(sql, t.getMemoryId(), t.getBrand(), t.getMemory(), t.getPrice())>0;
	}

	@Override
	public boolean update(Memory_Table t) {
		String sql = "UPDATE Memory_Table SET Memory_ID=?, Brand=?, Memory_Type=?, Price=? WHERE Memory_ID=?";
		return jdbcTemplate.update(sql, t.getMemoryId(), t.getBrand(), t.getMemory(), t.getPrice())>0;
	}

	@Override
	public boolean delete(int ID) {
		String query = "DELETE FROM Memory_Table WHERE Memory_ID=?";
		return jdbcTemplate.update(query, ID) > 0;
	}

	@Override
	public List<Memory_Table> getByPrice(int Price) {
		return null;
		// TODO Auto-generated method stub
	}

	@Override
	public List<Memory_Table> getByUserName(String UserName) {
		// TODO Auto-generated method stub
		return null;
	}
}
