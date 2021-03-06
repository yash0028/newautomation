# Last updated on 
@US1194527
@2018.PI02
@2018.PI02.04
@releasePast
@iterationPast
Feature: US1194527 - [Unfinished] PIC Implementation

  @TC605437
  @Manual
  @Functional
  Scenario: TC605437 - [RL0]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @TC605438
  @Manual
  @Functional
  Scenario: TC605438 - [RL1]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @TC605439
  @Manual
  @Functional
  Scenario: TC605439 - [RL2]
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

