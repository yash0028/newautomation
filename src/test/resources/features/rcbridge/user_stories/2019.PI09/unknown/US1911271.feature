# Last updated on 
@US1911271
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1911271 - Platform Cosmos - Create OCM upon first transaction in Exari for migrated contracts (Demo Only - TermContract)

  @TC886617
  @Manual
  @Functional
  Scenario: TC886617 - [RL0]
    Given an Emptoris contract has migrated to Exari
    When a valid termContract event occurs in Exari for the contract
    Then an OCM Contract Configuration record is created
    And a demo of the functionality is available to Product Owners
    ###

