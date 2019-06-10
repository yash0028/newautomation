# Last updated on 
@MVP
@US1260989
@2018.PI03
@2018.PI03.02
@releaseUnknown
@iterationUnknown
Feature: US1260989 - [Unfinished] Integrate CLM with Examiner (Continued)

  @TC605431
  @Manual
  @Functional
  @MVP
  Scenario: TC605431 - [RL0]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @TC605432
  @Manual
  @Functional
  @MVP
  Scenario: TC605432 - [RL1]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @TC605433
  @Manual
  @Functional
  @MVP
  Scenario: TC605433 - [RL2]
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

