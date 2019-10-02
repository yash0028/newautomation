# Last updated on 
@US1862530
@2019.PI10
@releaseFuture
@iterationUnknown
Feature: US1862530 - Create OCM upon first transaction in Exari for migrated contracts (Demo Only - AmendContract Add Product)

  @TC857032
  @Manual
  @Functional
  Scenario: TC857032 - [RL0]
    Given an Emptoris contract has migrated to Exari
    When a valid amendcontract event occurs in Exari for the contract
    And the transaction request is to Add Product
    Then an OCM Contract Configuration record is created
    And a demo of the functionality is available to Product Owners
    ###

