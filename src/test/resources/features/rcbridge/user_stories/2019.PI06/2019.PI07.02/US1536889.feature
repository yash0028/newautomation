# Last updated on 
@US1536889
@2019.PI06
@2019.PI07.02
@releasePast
@iterationPast
Feature: US1536889 - Validate contract data - cancel [NDB]

  @RC_unlinked
  @TC703939
  @Manual
  @Functional
  Scenario: TC703939 - [RL0]
    Given an CONTRACT TERMS UPDATED TRANSACTION is received
    When the AMENDMENT contains at least one PRODUCT GROUP
    Then the AMENDMENT passes validation
    And the AMENDMENT continues to applicable next step

  @TC703941
  @Manual
  @Functional
  Scenario: TC703941 - [RL1]
    Given a CONTRACT TERMS UPDATED TRANSACTION event is received
    When the CONTRACT TERMS UPDATED TRANSACTION record includes at least one PRODUCT GROUP to cancel
    Then the CONTRACT TERMS UPDATED TRANSACTION passes validation
    And the CONTRACT TERMS UPDATED TRANSACTION continues to applicable next step in process

  @RC_unlinked
  @TC703942
  @Manual
  @Functional
  Scenario: TC703942 - [RL2]
    Given a CONTRACT TERMS UPDATED TRANSACTION event is received
    When the CONTRACT TERMS UPDATED TRANSACTION record includes at least one PRODUCT GROUP to cancel
    Then the CONTRACT TERMS UPDATED TRANSACTION passes validation
    And the CONTRACT TERMS UPDATED TRANSACTION continues to applicable next step in process

  @RC_unlinked
  @TC703943
  @Manual
  @Functional
  Scenario: TC703943 - [RL3]
    Given a CONTRACT TERMS UPDATED TRANSACTION event is received
    When the CONTRACT TERMS UPDATED TRANSACTION record does not contain one or more PRODUCT GROUP records to cancel
    Then the CONTRACT TERMS UPDATED TRANSACTION does not pass validation
    And a Type 3 error generated and logged
    And a message generated 'CONTRACT TERMS UPDATED TRANSACTION RECORD MISSING ACTION TYPE

