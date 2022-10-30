package edu.fau.group3.services;

import java.util.List;




import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group3.model.Case_Table;


@Component
public class CaseService extends BaseService<Case_Table> {

	@Autowired
	public CaseService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Case_Table getByID(int ID) {
		String sql = "SELECT * FROM Case_Table where Case_ID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{ID}, new CaseMapper());
			} catch (EmptyResultDataAccessException ex) {
			return null;
			}
	}


	@Override
	public List<Case_Table> getByBrand(String Brand) {
		String sql = "Select * from Case_Table where Brand = ?";
		
		return jdbcTemplate.query(sql, new Object[] {Brand}, new CaseMapper());
	}
	
	@Override
	public List<Case_Table> getByPrice(int Price) {
		String sql = "Select * from Case_Table where Price = ?";
		
		return jdbcTemplate.query(sql, new Object[] {Price}, new CaseMapper());
	}
	
	@Override
	public List<Case_Table> getAll() {
		String sql = "select * from Case_Table";
		/* 1. Run query
		 * 2. For each result call rowMapper.mapRow()
		 * 3. Add to the list the result of mapRow()  (Employee object)
		 * 4. Return list
		 */
		return jdbcTemplate.query(sql, new CaseMapper());

	}

	@Override
	public boolean create(Case_Table t) {
		String sql = "INSERT INTO Case_Table (Case_ID, Brand, Case_Type, Price)" 
				+ " values (?, ?, ?, ?)";
		return jdbcTemplate.update(sql, t.getCaseId(), t.getBrand(), t.getcaseType(), t.getPrice())>0;
	}

	@Override
	public boolean update(Case_Table t) {
		String sql = "UPDATE Case_Table SET Case_ID=?, Brand=?, Case=?, Price=? WHERE Case_ID=?";
		return jdbcTemplate.update(sql, t.getCaseId(), t.getBrand(), t.getcaseType(), t.getPrice(), t.getCaseId())>0;
	}

	@Override
	public boolean delete(int ID) {
		String query = "DELETE FROM Case_Table WHERE Case_ID=?";
		return jdbcTemplate.update(query, ID) > 0;
	}

	@Override
	public List<Case_Table> getByUserName(String UserName) {
		// TODO Auto-generated method stub
		return null;
	}
}
