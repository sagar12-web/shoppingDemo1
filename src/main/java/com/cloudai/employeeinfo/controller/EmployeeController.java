package com.cloudai.employeeinfo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cloudai.employeeinfo.model.Employee;
import com.cloudai.employeeinfo.service.EmployeeService;


@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeSerivce;
	
	@RequestMapping(value = "employee_form", method = RequestMethod.GET)
	private String getEmployeeForm() {
		return "addEmployee";
	}
	
	@RequestMapping(value = "employee_edit", method = RequestMethod.GET)
	private String getEmployeeEditForm(@RequestParam int id, Model model) {
		model.addAttribute("emp", employeeSerivce.getEmployeeById(id));
		return "editEmployee";
	}
	
	@RequestMapping(value = "save_employee", method = RequestMethod.POST)
	private String saveEmployeeInfo(@ModelAttribute Employee employee) {
		employeeSerivce.saveEmployeeInfo(employee);
		return "redirect:/employee_list";
	}
	

	@RequestMapping(value = "update_employee", method = RequestMethod.POST)
	private String updateEmployeeInfo(@ModelAttribute Employee employee) {
		employeeSerivce.updateEmployeeInfo(employee);
		return "redirect:/employee_list";
	}
	
	@RequestMapping(value = { "/", "employee_list"}, method = RequestMethod.GET)
	private String getEmployeeList(Model model) {
		model.addAttribute("employees", employeeSerivce.getAllEmployee());
		return "listEmployee";
	}
	
	@RequestMapping(value = "employee_delete", method = RequestMethod.GET)
	public String deleteEmployeeInfo(@RequestParam int id) {
		employeeSerivce.deleteEmployeeInfo(id);
		return "redirect:/employee_list";
	}
}
