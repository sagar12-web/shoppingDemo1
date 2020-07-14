package com.cloudai.employeeinfo.repository;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cloudai.employeeinfo.model.Employee;
import com.cloudai.employeeinfo.util.EmployeeRoomMapper;

@Repository
public class EmployeeRepositoryImpl implements EmployeeRepository {
	
	private static final String INSERT_SQL = "insert into employee_tbl(name, user_name, hobbies, password, gender, department, email,"
			+ "mobile_no, dob )values(?,?,?,?,?,?,?,?,?)";
	private static final String UPDATE_SQL = "update employee_tbl set name=?, user_name=?, hobbies=?, password=?, gender=?, department=?, email=?, "
			+ "mobile_no=?, dob=? where id=?";
	private static final String LIST_SQL ="select * from employee_tbl";
	private static final String GET_BY_ID_SQL ="select * from employee_tbl where id=? ";
	private static final String DELETE_SQL ="delete from employee_tbl where id=?";

	
	
	@Autowired
	private DataSource dataSource;

	@Override
	public void saveEmployeeInfo(Employee employee) {
		getJdbcTemplate().update(INSERT_SQL, new Object[] {employee.getEmployeeName(), employee.getUserName(), employee.getHobbies(),
				employee.getPassword(), employee.getGender(), employee.getDepartment(), employee.getEmail(),
				employee.getMobileNo(), employee.getDob()});
				
		}
		

	
	

	@Override
	public void updateEmployeeInfo(Employee employee) {
		getJdbcTemplate().update(UPDATE_SQL, new Object[] {employee.getEmployeeName(), employee.getUserName(), employee.getHobbies(),
				employee.getPassword(), employee.getGender(), employee.getDepartment(), employee.getEmail(),
				employee.getMobileNo(), employee.getDob(), employee.getId()});
				
	}



	@Override
	public void deleteEmployeeInfo(int id) {
		getJdbcTemplate().update(DELETE_SQL, new Object[] {id});

	}


	@Override
	public List<Employee> getAllEmployee() {
		return getJdbcTemplate().query(LIST_SQL, new EmployeeRoomMapper());
	}



	@Override
	public Employee getEmployeeById(int id) {
		return getJdbcTemplate().query(GET_BY_ID_SQL, new Object[] {id}, new EmployeeRoomMapper()).get(0);
	}

	public JdbcTemplate getJdbcTemplate() {
		return new JdbcTemplate(dataSource);
	}



}
