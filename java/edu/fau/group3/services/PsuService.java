package edu.fau.group3.services;

import java.util.List;



import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group3.model.PSU_Table;


@Component
public class PsuService extends BaseService<PSU_Table> {

	@Autowired
	public PsuService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public PSU_Table getByID(int ID) {
		String sql = "SELECT * FROM PSU_Table where PSU_ID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{ID}, new PsuMapper());
			} catch (EmptyResultDataAccessException ex) {
			return null;
			}
	}


	@Override
	public List<PSU_Table> getByBrand(String Brand) {
		String sql = "Select * from PSU_Table where Brand = ?";
		
		return jdbcTemplate.query(sql, new Object[] {Brand}, new PsuMapper());
	}

	@Override
	public List<PSU_Table> getAll() {
		String sql = "select * from PSU_Table";
		/* 1. Run query
		 * 2. For each result call rowMapper.mapRow()
		 * 3. Add to the list the result of mapRow()  (Employee object)
		 * 4. Return list
		 */
		return jdbcTemplate.query(sql, new PsuMapper());

	}

	@Override
	public boolean create(PSU_Table t) {
		String sql = "insert into PSU_Table (PSU_ID, Brand, PSU, Price)"
				+ "values (?, ?, ?, ?)";
				return jdbcTemplate.update(sql, t.getPsuId(), t.getBrand(), t.getPsuType(), t.getPrice())>0;
	}

	@Override
	public boolean update(PSU_Table t) {
		String sql = "UPDATE PSU_Table SET PSU_ID=?, Brand=?, PSU=?, Price=? WHERE PSU_ID=?";
		return jdbcTemplate.update(sql, t.getPsuId(), t.getBrand(), t.getPsuType(), t.getPrice(), t.getPsuId())>0;
	}

	@Override
	public boolean delete(int ID) {
		String query = "DELETE FROM PSU_Table WHERE PSU_ID=?";
		return jdbcTemplate.update(query, ID) > 0;
	}

	@Override
	public List<PSU_Table> getByPrice(int Price) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PSU_Table> getByUserName(String UserName) {
		// TODO Auto-generated method stub
		return null;
	}	

}
