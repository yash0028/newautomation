# Last updated on 2018-07-06T20:15:56.376Z
@MVP
@Priority_1
@Parity
Feature: F171571 - Provide contract details to Examiner

  @MVP
  @2018.PI03
  @2018.PI03.01
  Scenario: US861033::0
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @MVP
  @2018.PI03
  @2018.PI03.01
  Scenario: US861033::1
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @MVP
  @2018.PI03
  @2018.PI03.01
  Scenario: US861033::2
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

