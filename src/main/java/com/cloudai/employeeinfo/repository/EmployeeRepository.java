package com.cloudai.employeeinfo.repository;

import java.util.List;

import com.cloudai.employeeinfo.model.Employee;

public interface EmployeeRepository {
	
	void saveEmployeeInfo(Employee employee);

	void updateEmployeeInfo(Employee employee);
	
	void deleteEmployeeInfo(int id);
	
	List<Employee> getAllEmployee();
	
	Employee getEmployeeById(int id);


}
