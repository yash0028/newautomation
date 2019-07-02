# Last updated on 
@US1854694
@2019.PI08
@2019.PI08.01
@releasePresent
@iterationPresent
Feature: US1854694 - Tracking discrepancies identified during initial OCM build

  @TC853525
  @Manual
  @Functional
  Scenario: TC853525 - [RL0]
    Given an Emptoris contract has migrated to Exari
    When the initial contract transaction event in Exari for the contract
    Then the data sources of the OCM data is recorded
    And made available in the OCM and UCM
    ###

