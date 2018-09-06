# Last updated on 
@MVP
@US1260989
@2018.PI03
Feature: US1260989 - [Unfinished] Integrate CLM with Examiner (Continued)

  @TC565700
  @Automated
  @Functional
  Scenario: TC565700 - [RL1]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @TC565701
  @Automated
  @Functional
  Scenario: TC565701 - [RL2]
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

  @TC565699
  @Automated
  @Functional
  Scenario: TC565699 - [RL0]
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

