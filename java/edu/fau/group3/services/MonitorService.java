package edu.fau.group3.services;

import java.util.List;




import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

import edu.fau.group3.model.Monitor_Table;


@Component
public class MonitorService extends BaseService<Monitor_Table> {

	@Autowired
	public MonitorService(DataSource dataSource) {
		super(dataSource);
		// TODO Auto-generated constructor stub
	}

	@Override
	public Monitor_Table getByID(int ID) {
		String sql = "SELECT * FROM Monitor_Table where Monitor_ID = ?";
		try {
			return jdbcTemplate.queryForObject(sql, new Object[]{ID}, new MonitorMapper());
			} catch (EmptyResultDataAccessException ex) {
			return null;
			}
	}


	@Override
	public List<Monitor_Table> getByBrand(String Brand) {
		String sql = "Select * from Monitor_Table where Brand = ?";
		
		return jdbcTemplate.query(sql, new Object[] {Brand}, new MonitorMapper());
	}
	
	@Override
	public List<Monitor_Table> getByPrice(int Price) {
		String sql = "Select * from Monitor_Table where Price = ?";
		
		return jdbcTemplate.query(sql, new Object[] {Price}, new MonitorMapper());
	}
	
	@Override
	public List<Monitor_Table> getAll() {
		String sql = "select * from Monitor_Table";
		/* 1. Run query
		 * 2. For each result call rowMapper.mapRow()
		 * 3. Add to the list the result of mapRow()  (Employee object)
		 * 4. Return list
		 */
		return jdbcTemplate.query(sql, new MonitorMapper());

	}

	@Override
	public boolean create(Monitor_Table t) {
		String sql = "INSERT INTO Monitor_Table (Monitor_ID, Brand, Monitor_Type, Price)" 
				+ " values (?, ?, ?, ?)";
		return jdbcTemplate.update(sql, t.getMonitorId(), t.getBrand(), t.getMonitorType(), t.getPrice())>0;
	}

	@Override
	public boolean update(Monitor_Table t) {
		String sql = "UPDATE Monitor_Table SET Monitor_ID=?, Brand=?, Monitor=?, Price=? WHERE Monitor_ID=?";
		return jdbcTemplate.update(sql, t.getMonitorId(), t.getBrand(), t.getMonitorType(), t.getPrice(), t.getMonitorId())>0;
	}

	@Override
	public boolean delete(int ID) {
		String query = "DELETE FROM Monitor_Table WHERE Monitor_ID=?";
		return jdbcTemplate.update(query, ID) > 0;
	}

	@Override
	public List<Monitor_Table> getByUserName(String UserName) {
		// TODO Auto-generated method stub
		return null;
	}
}
