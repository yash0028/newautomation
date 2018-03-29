package com.optum.clm.producer.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.optum.clm.producer.model.Employee;

@Repository
public interface EmployeeRepository extends CrudRepository<Employee, Long> {


	Iterable<Employee> findByOrganizationId(Long organizationId);
}
