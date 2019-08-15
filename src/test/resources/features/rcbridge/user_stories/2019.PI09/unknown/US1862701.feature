# Last updated on 
@US1862701
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1862701 - Platform Unet - Create OCM upon first transaction in Exari for migrated contracts (Demo Only - TermContract)

  @TC857034
  @Manual
  @Functional
  Scenario: TC857034 - [RL0]
    Given an Emptoris contract has migrated to Exari
    When a valid termContract event occurs in Exari for the contract
    Then an OCM Contract Configuration record is created
    And a demo of the functionality is available to Product Owners
    ###

