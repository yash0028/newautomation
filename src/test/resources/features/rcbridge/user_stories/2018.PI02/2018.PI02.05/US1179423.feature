# Last updated on 
@US1179423
@2018.PI02
@2018.PI02.05
@releasePast
@iterationPast
Feature: US1179423 - [Continued] Examiner implementation

  @TC565240
  @Automated
  @Functional
  Scenario: TC565240 - [RL0]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @TC565241
  @Automated
  @Functional
  Scenario: TC565241 - [RL1]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @TC565242
  @Manual
  @Functional
  Scenario: TC565242 - [RL2]
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

