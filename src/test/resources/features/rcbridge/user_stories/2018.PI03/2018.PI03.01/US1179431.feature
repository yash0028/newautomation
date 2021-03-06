# Last updated on 
@US1179431
@2018.PI03
@2018.PI03.01
@releasePast
@iterationPast
Feature: US1179431 - [Continued] PIC Implementation

  @TC565438
  @Automated
  @Functional
  Scenario: TC565438 - [RL0]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @TC565439
  @Automated
  @Functional
  Scenario: TC565439 - [RL1]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @TC565440
  @Manual
  @Functional
  Scenario: TC565440 - [RL2]
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

