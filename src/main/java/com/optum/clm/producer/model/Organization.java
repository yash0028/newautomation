package com.optum.clm.producer.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.Data;

@Data
@Entity
public class Organization {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotNull
	private String organizationName;

	private String location;
	private LocalDateTime createDate;
	private LocalDateTime updateDate;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "organization")
	@JsonBackReference
	private Set<Employee> employees;
}
