package edu.fau.group3.services;

import java.util.List;




import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group3.model.Motherboard_Table;

@Component
public class MotherboardService extends BaseService<Motherboard_Table> {

	@Autowired
	public MotherboardService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Motherboard_Table getByID(int ID) {
		String sql = "SELECT * FROM Motherboard_Table where Motherboard_ID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{ID}, new MotherboardMapper());
			} catch (EmptyResultDataAccessException ex) {
			return null;
			}
	}


	@Override
	public List<Motherboard_Table> getByBrand(String Brand) {
		String sql = "Select * from Motherboard_Table where Brand = ?";
		
		return jdbcTemplate.query(sql, new Object[] {Brand}, new MotherboardMapper());
	}
	
	@Override
	public List<Motherboard_Table> getByPrice(int Price) {
		String sql = "Select * from Motherboard_Table where Price = ?";
		
		return jdbcTemplate.query(sql, new Object[] {Price}, new MotherboardMapper());
	}
	
	@Override
	public List<Motherboard_Table> getAll() {
		String sql = "select * from Motherboard_Table";
		/* 1. Run query
		 * 2. For each result call rowMapper.mapRow()
		 * 3. Add to the list the result of mapRow()  (Employee object)
		 * 4. Return list
		 */
		return jdbcTemplate.query(sql, new MotherboardMapper());

	}

	@Override
	public boolean create(Motherboard_Table t) {
		String sql = "INSERT INTO Motherboard_Table (Motherboard_ID, Brand, Motherboard_Type, Price)" 
				+ " values (?, ?, ?, ?)";
		return jdbcTemplate.update(sql, t.getMotherboardId(), t.getBrand(), t.getMotherboardType(), t.getPrice())>0;
	}

	@Override
	public boolean update(Motherboard_Table t) {
		String sql = "UPDATE Motherboard_Table SET Motherboard_ID=?, Brand=?, Motherboard=?, Price=? WHERE Motherboard_ID=?";
		return jdbcTemplate.update(sql, t.getMotherboardId(), t.getBrand(), t.getMotherboardType(), t.getPrice(), t.getMotherboardId())>0;
	}

	@Override
	public boolean delete(int ID) {
		String query = "DELETE FROM Motherboard_Table WHERE Motherboard_ID=?";
		return jdbcTemplate.update(query, ID) > 0;
	}

	@Override
	public List<Motherboard_Table> getByUserName(String UserName) {
		// TODO Auto-generated method stub
		return null;
	}

}
