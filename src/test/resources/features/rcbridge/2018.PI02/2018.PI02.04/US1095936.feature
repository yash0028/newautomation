# Last updated on 
@PES
@US1095936
@2018.PI02
@2018.PI02.04
@PI02_Top3
@AUTO-PES
@PES
@Exari_Microservice
@MVP
@CLM_Exari
@Parity
@releasePast
@iterationPast
Feature: US1095936 - External Data Query for PES - Error Handling

  @TC493895
  @Manual
  @Functional
  @PES
  Scenario: TC493895 - [RL2] Catastrophic error validation
    Given a user needs to call PES
    When a catastrophic error occurs
    Then an error code will be logged.

  @TC493894
  @Manual
  @Functional
  @PES
  Scenario: TC493894 - [RL1] System unavailable error validation
    Given a user needs to call PES
    When the system goes down
    Then the user receives a system error message

  @TC493893
  @Manual
  @Functional
  @PES
  Scenario: TC493893 - [RL0] Incorrect data error validation
    Given a user needs to call PES
    When a user incorrectly inputs data
    Then the user receives a bad input error message

