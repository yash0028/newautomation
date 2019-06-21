# Last updated on 
@US1854694
@2019.PI08
@2019.PI08.01
@releaseFuture
@iterationFuture
Feature: US1854694 - Tracking discrepencies identified during initial OCM build

  @TC853525
  @Manual
  @Functional
  Scenario: TC853525 - [RL0]
    Given an Emptoris contract has migrated to Exari
    When a valid contract transaction event occurs in Exari for the contract
    And discrepancies identified among UCM and PES ContractsAPI
    Then the contract record is assigned a Type 2 error
    And the discrepancies made available to users to resolve thru the CMD UI
    ###

