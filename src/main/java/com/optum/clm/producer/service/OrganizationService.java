package com.optum.clm.producer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.optum.clm.producer.exception.ResourceNotFoundException;
import com.optum.clm.producer.model.Organization;
import com.optum.clm.producer.repository.OrganizationRepository;

import lombok.extern.slf4j.Slf4j;

/**
 *
 */
@Slf4j
@Service
public class OrganizationService {

	@Autowired
	private OrganizationRepository organizationRepository;

	@Autowired
	private KafkaTemplate<String, String> template;

	public Organization findById(Long organizationId) {
		return organizationRepository.findById(organizationId).orElseThrow(() -> new ResourceNotFoundException("Organization not found: " + organizationId));
	}

	public Iterable<Organization> findAll() {
		return organizationRepository.findAll();
	}

	@Async
	public void save(Organization organization) {
		organizationRepository.save(organization);

		log.info("Organization successfully saved: {}", organization);

		template.send("organization", "Organization Created id:" + organization.getId());


	}
}
