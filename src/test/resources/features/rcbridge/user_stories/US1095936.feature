# Last updated on 
@PES
@US1095936
@2018.PI02
Feature: US1095936 - External Data Query for PES - Error Handling

  @TC493893
  @Manual
  @Functional
  Scenario: TC493893 - [RL0] Incorrect data error validation
    Given a user needs to call PES
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @TC493894
  @Manual
  @Functional
  Scenario: TC493894 - [RL1] System unavailable error validation
    Given a user needs to call PES
    When the system goes down
    Then the user receives a system error message

  @TC493895
  @Manual
  @Functional
  Scenario: TC493895 - [RL2] Catastrophic error validation
    Given a user needs to call PES
    When a catastrophic error occurs
    Then an error code will be logged.

