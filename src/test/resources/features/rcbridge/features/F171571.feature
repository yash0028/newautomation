# Last updated on 2018-07-24T16:42:00.423Z
@MVP
@Priority_1
@Parity
Feature: F171571 - Provide contract details to Examiner

  @2018.PI03
  @2018.PI03.02
  Scenario: US1234077::0
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for additional contract details from Exari
    Then the Domain Service receives the Exari contract model

  @2018.PI03
  @2018.PI03.02
  Scenario: US1234077::1
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for invalid contract details from Exari
    Then the Domain Service returns a service error

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

