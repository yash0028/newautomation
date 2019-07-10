# Last updated on 
@US1807194
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationFuture
Feature: US1807194 - CMD Rules - MAHP GHMO - Radiology Area Code and Market

  @TC828084
  @Manual
  @Functional
  Scenario: TC828084 - [RL0]
    Given a valid contract includes the MAHP GHMO product
    When Radiology Area Cd is needed for the OCM
    Then the zip code from the CounterpartyAddressFull UCM property is retrieved
    And the zip code used to interrogate the RadiologyAreaCd table and the Zip to Market table
    And the process continued for all service addresses on the UCM record

  @TC828087
  @Manual
  @Functional
  Scenario: TC828087 - [RL1]
    Given a contract includes the MAHP GHMO product
    When the Radiology Area Cd for the CounterpartyAddressFull has been stored in the OCM
    Then the zip code from each Service Location record from the UHG_CounterpartyAdditionalLocations UCM object are retrieved
    And the zip code used to interrogate the RadiologyAreaCd table and the Zip to Market table
    And the process continues until all service Location records from the UHG_CounterpartyAdditionalLocations object have completed

  @TC828088
  @Manual
  @Functional
  Scenario: TC828088 - [RL2]
    Given the contract includes the MAHP GHMO product
    When all the radiologyareacd and market numbers have been gathered
    Then the RadiologyAreaCd and Market Numbers for all address records are stored as part of the Contract OCM

  @TC879597
  @Manual
  @Functional
  Scenario: TC879597 - [RL3]
    Given RadiologyAreaCd exist in the OCM
    When the radiologyareacd from the OCM is needed
    Then the RadiologyAreaCd from the OCM are available

  @TC879598
  @Manual
  @Functional
  Scenario: TC879598 - [RL4]
    Given RadiologyAreaCd exist in the OCM
    When the OCM record includes two or more distinct radiologyareacd _marketnumber records
    Then conditions have NOT been met for Standard CMD Processing
    And the contract record flagged as "Enhanced CMD Process"

  @TC879599
  @Manual
  @Functional
  Scenario: TC879599 - [RL5]
    Given RadiologyAreaCd exist in the OCM
    When the OCM record includes one distinct radiologyareacd_marketnumber record
    Then conditions have been met for Standard CMD Processing

