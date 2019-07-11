# Last updated on 
@US1855541
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1855541 - Create OCM upon first transaction in Exari for migrated contracts (Demo Only - AmendContract transactions)

  @TC853524
  @Manual
  @Functional
  Scenario: TC853524 - [RL0]
    Given an Emptoris contract has migrated to Exari
    When a valid amendcontract transaction event occurs in Exari for the contract
    Then an OCM Contract Configuration record is created
    And a demo of the functionality is available to Product Owners
    ###

