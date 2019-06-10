# Last updated on 
@US1404704
@2019.PI06
@releaseUnknown
@iterationUnknown
Feature: US1404704 - Validate amendment contract transaction data

  @TC743503
  @Manual
  @Functional
  Scenario: TC743503 - [RL0]
    Given an CONTRACT AMENDMENT is received
    When the TRANSACTION contains at least one UCM PROPERTY TO CHANGE
    Then the TRANSACTION passes validation
    And the TRANSACTION continues to applicable next step

  @TC743538
  @Manual
  @Functional
  Scenario: TC743538 - [RL1]
    Given an CONTRACT AMENDMENT is received
    When the TRANSACTION Does Not contain at least one UCM PROPERTY WITH CHANGE
    Then the TRANSACTION Does NOT pass validation
    And a Type 3 error generated and logged
    And a message generated 'TRANSACTION MISSING PROPERTY TO CHANGE '

  @TC743551
  @Manual
  @Functional
  Scenario: TC743551 - [RL2]
    Given a CONTRACT AMENDMENT event is received
    When the CONTRACT AMENDMENT record includes at least one UCM PROPERTY records to add, cancel or update
    Then the CONTRACT AMENDMENT passes validation
    And the CONTRACT AMENDMENT continues to applicable next step in process

  @TC743564
  @Manual
  @Functional
  Scenario: TC743564 - [RL3]
    Given a CONTRACT AMENDMENT event is received
    When the CONTRACT AMENDMENT record does not contain one or more UCM PROPERTY records to add, cancel or update
    Then the CONTRACT AMENDMENT does not pass validation
    And a Type 3 error generated and logged
    And a message generated 'CONTRACT AMENDMENT RECORD MISSING ACTION TYPE'

