# Last updated on 2018-07-24T16:42:00.423Z
@MVP
@Priority_1
@Parity
Feature: F171571 - Provide contract details to Examiner

  @2018.PI03
  @2018.PI03.02
  Scenario: US1234077
    Given a business event is received from Exari
    When additional contract details are queried from Exari
    Then the Exari contract model is received.

  @2018.PI03
  @2018.PI03.02
  Scenario: US1234010
    Given an application wants to search contracts by any fields
    When the search API is called
    Then a list of contracts will be returned that matches the search criteria.

  @MVP
  @2018.PI03
  @2018.PI03.02
  Scenario: US861033::0
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @MVP
  @2018.PI03
  @2018.PI03.02
  Scenario: US861033::1
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @MVP
  @2018.PI03
  @2018.PI03.02
  Scenario: US861033::2
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

