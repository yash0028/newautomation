# Last updated on 
@US1537744
@releaseUnknown
@iterationUnknown
Feature: US1537744 - Validate contract data - fee schedule change

  @TC704158
  @Manual
  @Functional
  Scenario: TC704158 - [RL0]
    Given an CONTRACT TERMS UPDATED TRANSACTION is received
    When the AMENDMENT contains at least one PRODUCT GROUP
    Then the AMENDMENT passes validation
    And the AMENDMENT continues to applicable next step

  @TC704159
  @Manual
  @Functional
  Scenario: TC704159 - [RL1]
    Given an CONTRACT TERMS UPDATED TRANSACTION is received
    When the AMENDMENT Does Not contain at least one PRODUCT GROUP
    Then the AMENDMENT Does NOT pass validation
    And a Type 3 error generated and logged
    And a message generated 'AMENDMENT MISSING PRODUCT GROUP'

  @TC704160
  @Manual
  @Functional
  Scenario: TC704160 - [RL2]
    Given a CONTRACT TERMS UPDATED TRANSACTION event is received
    When the CONTRACT TERMS UPDATED TRANSACTION record includes at least one PRODUCT GROUP to add, cancel or update
    Then the CONTRACT TERMS UPDATED TRANSACTION passes validation
    And the CONTRACT TERMS UPDATED TRANSACTION continues to applicable next step in process

  @TC704161
  @Manual
  @Functional
  Scenario: TC704161 - [RL3]
    Given a CONTRACT TERMS UPDATED TRANSACTION event is received
    When the CONTRACT TERMS UPDATED TRANSACTION record does not contain one or more PRODUCT GROUP records to add, cancel or update
    Then the CONTRACT TERMS UPDATED TRANSACTION does not pass validation
    And a Type 3 error generated and logged
    And a message generated 'CONTRACT TERMS UPDATED TRANSACTION RECORD MISSING ACTION TYPE'

