# Last updated on 
@US1391148
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationFuture
Feature: US1391148 - Validate exari contract data - Add

  @TC616906
  @Manual
  @Functional
  Scenario: TC616906 - [RL0]
    Given an ContractAmended TRANSACTION is received
    When the AMENDMENT contains at least one PRODUCT GROUP
    Then the AMENDMENT passes validation
    And the AMENDMENT continues to applicable next step

  @TC616907
  @Manual
  @Functional
  Scenario: TC616907 - [RL1]
    Given an ContractAmended TRANSACTION is received
    When the AMENDMENT Does Not contain at least one PRODUCT GROUP
    Then the AMENDMENT Does NOT pass validation
    And a Type 3 error generated and logged
    And a message generated 'AMENDMENT MISSING PRODUCT GROUP'

  @TC616908
  @Manual
  @Functional
  Scenario: TC616908 - [RL2]
    Given a ContractAmended TRANSACTION event is received
    When the ContractAmended TRANSACTION record includes at least one PRODUCT GROUP to add, cancel or update
    Then the ContractAmended TRANSACTION passes validation
    And the ContractAmended TRANSACTION continues to applicable next step in process

  @TC616909
  @Manual
  @Functional
  Scenario: TC616909 - [RL3]
    Given a ContractAmended TRANSACTION event is received
    When the ContractAmended TRANSACTION record does not contain one or more PRODUCT GROUP records to add, cancel or update
    Then the ContractAmended TRANSACTION does not pass validation
    And a Type 3 error generated and logged
    And a message generated 'CONTRACT AMENDED TRANSACTION RECORD MISSING ACTION TYPE'

