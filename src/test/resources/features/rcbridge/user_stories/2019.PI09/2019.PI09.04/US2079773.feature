# Last updated on 
@Raj_NJ
@Damodar
@Satya
@US2079773
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2079773 - MSPS Specialty to SpecialtyGroup Crosswalk table (Optum EDQ)

  @TC1030018
  @Manual
  @Functional
  @Raj_NJ
  @Damodar
  @Satya
  Scenario: TC1030018 - [RL0]
    Given the MSPS SPECIALTY CROSSWALK table exists in the database
    When record details from the table are needed
    Then a service is available to provide table record details

  @TC1030019
  @Manual
  @Functional
  @Raj_NJ
  @Damodar
  @Satya
  Scenario: TC1030019 - [RL1]
    Given information from the MSPS SPECIALTY CROSSWALK table is needed
    When the requester provides a valid NDB SPECIALTY CODE
    Then the service matches on the table record with the same NDB SPECIALTY CODE
    And provides the table record detail in the response

  @TC1030020
  @Manual
  @Functional
  @Raj_NJ
  @Damodar
  @Satya
  Scenario: TC1030020 - [RL2]
    Given information from the MSPS SPECIALTY CROSSWALK table is needed
    When the requester DOES NOT provide a valid NDB SPECIALTY CODE
    Then the service is not invoked
    And a message returned 'PROVIDER SPECIALTY CODE IS REQUIRED INPUT'

  @TC1030021
  @Manual
  @Functional
  @Raj_NJ
  @Damodar
  @Satya
  Scenario: TC1030021 - [RL3]
    Given information from the MSPS CROSSWALK TABLE table is needed
    When the requester provides a valid NDB SPECIALTY CODE
    And the service is unable to match a table record with the same NDB SPECIALTY CODE
    Then a message returned 'NO MATCHING TABLE RECORD FOUND' in the response
    ###

