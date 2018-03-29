package com.optum.clm.producer.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.optum.clm.producer.model.Employee;
import com.optum.clm.producer.service.EmployeeService;

@RestController
@RequestMapping("/employees")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public void createEmployee(@RequestBody Employee employee) {
		employeeService.save(employee);
	}

	@PutMapping("/{employeeId}")
	@ResponseStatus(HttpStatus.ACCEPTED)
	public void updateEmployee(@PathVariable Long employeeId, @RequestBody @Valid Employee updatedEmployee) {

		Employee employee = employeeService.findById(employeeId);

		employee.setFirstname(updatedEmployee.getFirstname());
		employee.setLastname(updatedEmployee.getLastname());
		employee.setLocation(updatedEmployee.getLocation());
		employee.setTitle(updatedEmployee.getTitle());

		employeeService.save(employee);
	}

	@GetMapping
	public @ResponseBody Iterable<Employee> findEmployees() {
		return employeeService.findAll();
	}

	@GetMapping(value = "/{empId}",
			produces = { MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
	public @ResponseBody Employee getEmployee(@PathVariable Long empId) {

		return employeeService.findById(empId);
	}
}
