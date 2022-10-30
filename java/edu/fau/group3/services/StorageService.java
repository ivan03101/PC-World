package edu.fau.group3.services;

import java.util.List;


import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group3.model.Storage_Table;


@Component
public class StorageService extends BaseService<Storage_Table> {

	@Autowired
	public StorageService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Storage_Table getByID(int ID) {
		String sql = "SELECT * FROM Storage_Table where Storage_ID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{ID}, new StorageMapper());
			} catch (EmptyResultDataAccessException ex) {
			return null;
			}
	}


	@Override
	public List<Storage_Table> getByBrand(String Brand) {
		String sql = "Select * from Storage_Table where Brand = ?";
		
		return jdbcTemplate.query(sql, new Object[] {Brand}, new StorageMapper());
	}

	@Override
	public List<Storage_Table> getAll() {
		String sql = "select * from Storage_Table";
		/* 1. Run query
		 * 2. For each result call rowMapper.mapRow()
		 * 3. Add to the list the result of mapRow()  (Employee object)
		 * 4. Return list
		 */
		return jdbcTemplate.query(sql, new StorageMapper());

	}

	@Override
	public boolean create(Storage_Table t) {
		String sql = "insert into Storage_Table (Storage_ID, Brand, Storage_Type, Price)"
				+ "values (?, ?, ?, ?)";
				return jdbcTemplate.update(sql, t.getStorage_Id(), t.getBrand(), t.getStorageType(), t.getPrice())>0;
	}

	@Override
	public boolean update(Storage_Table t) {
		String sql = "UPDATE Storage_Table SET Storage_ID=?, Brand=?, Storage_Type=?, Price=? WHERE Storage_ID=?";
		return jdbcTemplate.update(sql, t.getStorage_Id(), t.getBrand(), t.getStorageType(), t.getPrice(), t.getStorage_Id())>0;
	}

	@Override
	public boolean delete(int ID) {
		String query = "DELETE FROM Storage_Table WHERE Storage_ID=?";
		return jdbcTemplate.update(query, ID) > 0;
	}

	@Override
	public List<Storage_Table> getByPrice(int Price) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Storage_Table> getByUserName(String UserName) {
		// TODO Auto-generated method stub
		return null;
	}


}