# Last updated on 
@US1573319
@2019.PI06
@2019.PI06.05
@releaseUnknown
@iterationUnknown
Feature: US1573319 - Validate contract data - Add [NDB and Cosmos]

  @TC720666
  @Manual
  @Functional
  Scenario: TC720666 - [RL0]
    Given an CONTRACT AMENDED TRANSACTION is received
    When the AMENDMENT contains at least one PRODUCT GROUP
    Then the AMENDMENT passes validation
    And the AMENDMENT continues to applicable next step

  @RC_unlinked
  @TC720677
  @Manual
  @Functional
  Scenario: TC720677 - [RL1]
    Given an CONTRACT AMENDED TRANSACTION is received
    When the AMENDMENT Does Not contain at least one PRODUCT GROUP
    Then the AMENDMENT Does NOT pass validation
    And a Type 3 error generated and logged
    And a message generated 'AMENDMENT MISSING PRODUCT GROUP'

  @RC_unlinked
  @TC720683
  @Manual
  @Functional
  Scenario: TC720683 - [RL2]
    Given a CONTRACT AMENDED TRANSACTION event is received
    When the CONTRACT AMENDED TRANSACTION record includes at least one PRODUCT GROUP to add, cancel or update
    Then the CONTRACT AMENDED TRANSACTION passes validation
    And the CONTRACT AMENDED TRANSACTION continues to applicable next step in process

  @RC_unlinked
  @TC720687
  @Manual
  @Functional
  Scenario: TC720687 - [RL3]
    Given a CONTRACT AMENDED TRANSACTION event is received
    When the CONTRACT AMENDED TRANSACTION record does not contain one or more PRODUCT GROUP records to add, cancel or update
    Then the CONTRACT AMENDED TRANSACTION does not pass validation
    And a Type 3 error generated and logged
    And a message generated 'CONTRACT AMENDED TRANSACTION RECORD MISSING ACTION TYPE'

