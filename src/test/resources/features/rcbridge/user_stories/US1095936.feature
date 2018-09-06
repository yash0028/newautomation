# Last updated on 
@PES
@US1095936
@2018.PI02
Feature: US1095936 - External Data Query for PES - Error Handling

  @TC565151
  @Automated
  @Functional
  Scenario: TC565151 - [RL0]
    Given a user needs to call PES
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @TC565153
  @Automated
  @Functional
  Scenario: TC565153 - [RL2]
    Given a user needs to call PES
    When a catastrophic error occurs
    Then an error code will be logged.

  @TC565152
  @Automated
  @Functional
  Scenario: TC565152 - [RL1]
    Given a user needs to call PES
    When the system goes down
    Then the user receives a system error message

  @TC493893
  @Manual
  @Functional
  Scenario: TC493893 - Incorrect data error validation
    Given a user needs to call PES
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @TC493894
  @Manual
  @Functional
  Scenario: TC493894::0 - System unavailable error validation
    Given a user needs to call PES
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @TC493894
  @Manual
  @Functional
  Scenario: TC493894::1 - System unavailable error validation
    Given a user needs to call PES
    When the system goes down
    Then the user receives a system error message

  @TC493895
  @Manual
  @Functional
  Scenario: TC493895 - Catastrophic error validation
    Given a user needs to call PES
    When a catastrophic error occurs
    Then an error code will be logged.

