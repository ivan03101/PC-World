package edu.fau.group3.services;

import java.util.List;




import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group3.model.Cooler_Table;

@Component
public class CoolerService extends BaseService<Cooler_Table> {

	@Autowired
	public CoolerService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Cooler_Table getByID(int ID) {
		String sql = "SELECT * FROM Cooler_Table where Cooler_ID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{ID}, new CoolerMapper());
			} catch (EmptyResultDataAccessException ex) {
			return null;
			}
	}


	@Override
	public List<Cooler_Table> getByBrand(String Brand) {
		String sql = "Select * from Cooler_Table where Brand = ?";
		
		return jdbcTemplate.query(sql, new Object[] {Brand}, new CoolerMapper());
	}
	
	@Override
	public List<Cooler_Table> getByPrice(int Price) {
		String sql = "Select * from Cooler_Table where Price = ?";
		
		return jdbcTemplate.query(sql, new Object[] {Price}, new CoolerMapper());
	}
	
	@Override
	public List<Cooler_Table> getAll() {
		String sql = "select * from Cooler_Table";
		/* 1. Run query
		 * 2. For each result call rowMapper.mapRow()
		 * 3. Add to the list the result of mapRow()  (Employee object)
		 * 4. Return list
		 */
		return jdbcTemplate.query(sql, new CoolerMapper());

	}

	@Override
	public boolean create(Cooler_Table t) {
		String sql = "INSERT INTO Cooler_Table (Cooler_ID, Brand, Cooler_Type, Price)" 
				+ " values (?, ?, ?, ?)";
		return jdbcTemplate.update(sql, t.getCoolerId(), t.getBrand(), t.getCoolerType(), t.getPrice())>0;
	}

	@Override
	public boolean update(Cooler_Table t) {
		String sql = "UPDATE Cooler_Table SET Cooler_ID=?, Brand=?, Cooler=?, Price=? WHERE Cooler_ID=?";
		return jdbcTemplate.update(sql, t.getCoolerId(), t.getBrand(), t.getCoolerType(), t.getPrice(), t.getCoolerId())>0;
	}

	@Override
	public boolean delete(int ID) {
		String query = "DELETE FROM Cooler_Table WHERE Cooler_ID=?";
		return jdbcTemplate.update(query, ID) > 0;
	}

	@Override
	public List<Cooler_Table> getByUserName(String UserName) {
		// TODO Auto-generated method stub
		return null;
	}

}
