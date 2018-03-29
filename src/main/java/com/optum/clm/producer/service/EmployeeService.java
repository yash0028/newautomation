package com.optum.clm.producer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.optum.clm.producer.exception.ResourceNotFoundException;
import com.optum.clm.producer.model.Employee;
import com.optum.clm.producer.model.Organization;
import com.optum.clm.producer.repository.EmployeeRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class EmployeeService {

	@Autowired
	EmployeeRepository employeeRepository;

	@Autowired
	private KafkaTemplate<String, String> template;

	@Async
	public void save(Employee employee) {

		Employee emp = employeeRepository.save(employee);

		log.info("Employee successfully saved: {}", employee);

		template.send("employee", "Employee Created id:" + emp.getId());
	}

	public Employee findById(Long empId) {
		return employeeRepository.findById(empId).orElseThrow(() -> new ResourceNotFoundException("Employee not found"));
	}

	public Iterable<Employee> findAll() {
		return employeeRepository.findAll();
	}



	@Async
	public Organization hire(Organization organization, Employee employee) {

		employee.setOrganization(organization);

		employeeRepository.save(employee);

		template.send("employee", "Employee hired, id: " + employee.getId());

		return organization;
	}

	public Iterable<Employee> findByOrganizationId(Long organizationId) {
		return employeeRepository.findByOrganizationId(organizationId);
	}

	@Async
	public Organization fire(Organization organization, Employee employee) {

		employee.setOrganization(null);

		employeeRepository.save(employee);

		template.send("employee", "Employee fired, id: " + employee.getId());

		return organization;
	}
}
