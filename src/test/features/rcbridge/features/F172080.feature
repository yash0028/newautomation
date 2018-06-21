# Last updated on 2018-06-21T16:44:21.223Z
@MVP
@PI02_Top3
@Plus
@Parity
Feature: F172080 - Exari>COSMOS - Physician Payload -  CF Team

  @2018.PI02
  @2018.PI02.04
  Scenario: US1069574
    Given COSMOS edits the Exari>COSMOS Physician Panel data
    When the Exari>COSMOS data errors
    Then COSMOS will return the error (s) to Exari around the Physician Panel failures

  @2018.PI02
  @2018.PI02.01
  Scenario: US1069520
    Given business requirements
    When COSMOS received all necessary information from business project and Exari teams
    Then the COSMOS CF team will be able to complete their analysis successfully

  Scenario: US1091459
    Given business requirements
    When COSMOS received all necessary information from business project and Exari teams
    Then the COSMOS CF team will be able to complete their analysis successfully

  @CLM_UAT
  @2018.PI02
  @2018.PI02.04
  Scenario: US1090871
    Given the COSMOS team completes the Layer 7 Certification Process
    When COSMOS creates the API to ingest Exari Integration layer data
    Then the COSMOS will be able to use the API successfully

  @2018.PI02
  @2018.PI02.05
  Scenario: US1090672
    Given COSMOS edits the Exari>COSMOS Physician Panel data
    When the Exari>COSMOS data errors
    Then COSMOS will return the error to Exari around the Physician Panel failures

  Scenario: US1090659
    Given business requirements
    When COSMOS received all necessary information from business project and Exari teams
    Then the COSMOS CF team will be able to complete their analysis successfully

  @CLM_UAT
  @2018.PI02
  @2018.PI02.02
  Scenario: US1147465
    Given the COSMOS team completes the Layer 7 Certification Process
    When COSMOS creates the API to ingest Exari Integration layer data
    Then the COSMOS will be able to use the API successfully

