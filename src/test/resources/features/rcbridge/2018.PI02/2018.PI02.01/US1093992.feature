# Last updated on
@CLM_UAT
@PES
@US1093992
@2018.PI02
@2018.PI02.01
@PI02_Top3
@AUTO-PES
@PES
@Exari_Microservice
@MVP
@CLM_Exari
@Parity
@F137899
@releasePast
@iterationPast
Feature: US1093992 - Handle Errors from PES

  @TC565199
  @Automated
  @Functional
  @CLM_UAT
  @PES
  @US1093992
  @2018.PI02
  @2018.PI02.01
  Scenario: TC565199 - [RL2]
    Given a user needs to call PES
    When a catastrophic error occurs
    Then a service ticket will need to be created.

  @TC565198
  @Automated
  @Functional
  @CLM_UAT
  @PES
  @US1093992
  @2018.PI02
  @2018.PI02.01
  Scenario: TC565198 - [RL1]
    Given a user needs to call PES
    When the system goes down
    Then the user receives a system error message

  @TC565197
  @Automated
  @Functional
  @CLM_UAT
  @PES
  @US1093992
  @2018.PI02
  @2018.PI02.01
  Scenario: TC565197 - [RL0]
    Given a user needs to call PES
    When a user incorrectly inputs data
    Then the user receives a bad input error message

