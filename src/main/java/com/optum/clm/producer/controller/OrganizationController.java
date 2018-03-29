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
import com.optum.clm.producer.model.Organization;
import com.optum.clm.producer.service.EmployeeService;
import com.optum.clm.producer.service.OrganizationService;

@RestController
@RequestMapping("/organizations")
public class OrganizationController {

	@Autowired
	private OrganizationService organizationService;

	@Autowired
	private EmployeeService employeeService;

	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public void createOrganization(@RequestBody @Valid Organization organization) {
		organizationService.save(organization);
	}

	@PutMapping("/{organizationId}")
	@ResponseStatus(HttpStatus.ACCEPTED)
	public void updateOrganization(@PathVariable Long organizationId, @RequestBody @Valid Organization updatedOrganization) {

		Organization organization = organizationService.findById(organizationId);

		organization.setOrganizationName(updatedOrganization.getOrganizationName());
		organization.setLocation(updatedOrganization.getLocation());

		organizationService.save(organization);
	}

	@GetMapping
	public @ResponseBody Iterable<Organization> findOrganizations() {
		return organizationService.findAll();
	}

	@GetMapping(value = "/{organizationId}",
			produces = { MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
	public @ResponseBody Organization getOrganization(@PathVariable Long organizationId) {

		return organizationService.findById(organizationId);
	}

	@GetMapping(value = "/{organizationId}/employees",
			produces = { MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE })
	public @ResponseBody Iterable<Employee> findByOrganizationId(@PathVariable Long organizationId) {
		return employeeService.findByOrganizationId(organizationId);
	}


	@PutMapping(value = "/{organizationId}/employees/{employeeId}/fire")
	public @ResponseBody Organization fireEmployee(@PathVariable Long organizationId, @PathVariable Long employeeId) {

		Organization organization = organizationService.findById(organizationId);
		Employee employee = employeeService.findById(employeeId);

		return employeeService.fire(organization, employee);
	}
}
