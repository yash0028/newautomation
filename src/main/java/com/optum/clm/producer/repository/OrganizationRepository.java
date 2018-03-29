package com.optum.clm.producer.repository;

import org.springframework.data.repository.CrudRepository;

import com.optum.clm.producer.model.Organization;

public interface OrganizationRepository extends CrudRepository<Organization, Long> {
}
