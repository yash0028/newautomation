# Last updated on 
@US1862696
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1862696 - Create OCM upon first transaction in Exari for migrated contracts (Demo Only - AmendContract Cancel Product)

  @TC857030
  @Manual
  @Functional
  Scenario: TC857030 - [RL0]
    Given an Emptoris contract has migrated to Exari
    When a valid amendcontract event occurs in Exari for the contract
    And the transaction request is to Cancel Product
    Then an OCM Contract Configuration record is created
    And a demo of the functionality is available to Product Owners
    ###

