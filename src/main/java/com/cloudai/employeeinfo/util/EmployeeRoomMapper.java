package com.cloudai.employeeinfo.util;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.cloudai.employeeinfo.model.Employee;

public class EmployeeRoomMapper implements RowMapper<Employee>{

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
		EmployeeExtractor employeeExtractor = new EmployeeExtractor();
		return employeeExtractor.extractData(rs);
	}

}
