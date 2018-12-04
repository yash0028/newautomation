# Last updated on 
@US1391149
@2018.PI05
@2018.PI05.03
@MVP
@Scrum_Team_1
@Maintenance
@releasePresent
@iterationFuture
Feature: US1391149 - Validate contract data - cancel

  @TC616921
  @Manual
  @Functional
  Scenario: TC616921 - [RL0]
    Given an CONTRACT TERMS UPDATED TRANSACTION is received
    When the AMENDMENT contains at least one PRODUCT GROUP
    Then the AMENDMENT passes validation
    And the AMENDMENT continues to applicable next step

  @TC616922
  @Manual
  @Functional
  Scenario: TC616922 - [RL1]
    Given an CONTRACT TERMS UPDATED TRANSACTION is received
    When the AMENDMENT Does Not contain at least one PRODUCT GROUP
    Then the AMENDMENT Does NOT pass validation
    And a Type 3 error generated and logged
    And a message generated 'AMENDMENT MISSING PRODUCT GROUP'

  @TC616923
  @Manual
  @Functional
  Scenario: TC616923 - [RL2]
    Given a CONTRACT TERMS UPDATED TRANSACTION event is received
    When the CONTRACT TERMS UPDATED TRANSACTION record includes at least one PRODUCT GROUP to add, cancel or update
    Then the CONTRACT TERMS UPDATED TRANSACTION passes validation
    And the CONTRACT TERMS UPDATED TRANSACTION continues to applicable next step in process

  @TC616924
  @Manual
  @Functional
  Scenario: TC616924 - [RL3]
    Given a CONTRACT TERMS UPDATED TRANSACTION event is received
    When the CONTRACT TERMS UPDATED TRANSACTION record does not contain one or more PRODUCT GROUP records to add, cancel or update
    Then the CONTRACT TERMS UPDATED TRANSACTION does not pass validation
    And a Type 3 error generated and logged
    And a message generated 'CONTRACT TERMS UPDATED TRANSACTION RECORD MISSING ACTION TYPE

