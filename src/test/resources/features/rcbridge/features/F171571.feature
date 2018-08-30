# Last updated on 
@MVP
@Priority_1
@Parity
@Examiner
@F171571
Feature: F171571 - Provide contract details to Examiner

  @US1261002
  @2018.PI03
  Scenario: US1261002::0 - [Unfinished] Contract Query API Implementation
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for additional contract details from Exari
    Then the Domain Service receives the Exari contract model

  @US1261002
  @2018.PI03
  Scenario: US1261002::1 - [Unfinished] Contract Query API Implementation
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for invalid contract details from Exari
    Then the Domain Service returns a service error

  @US1283905
  @2018.PI03
  Scenario: US1283905::0 - [Unfinished] [Continued] Contract Query API Implementation
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for additional contract details from Exari
    Then the Domain Service receives the Exari contract model

  @US1283905
  @2018.PI03
  Scenario: US1283905::1 - [Unfinished] [Continued] Contract Query API Implementation
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for invalid contract details from Exari
    Then the Domain Service returns a service error

  @US1234077
  @2018.PI03
  Scenario: US1234077::0 - [Continued] [Continued] Contract Query API Implementation
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for additional contract details from Exari
    Then the Domain Service receives the Exari contract model

  @US1234077
  @2018.PI03
  Scenario: US1234077::1 - [Continued] [Continued] Contract Query API Implementation
    Given the Domain Service has received a business event from Exari
    When the Domain Service queries for invalid contract details from Exari
    Then the Domain Service returns a service error

  @MVP
  @US1260989
  @2018.PI03
  Scenario: US1260989::0 - [Unfinished] Integrate CLM with Examiner (Continued)
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @MVP
  @US1260989
  @2018.PI03
  Scenario: US1260989::1 - [Unfinished] Integrate CLM with Examiner (Continued)
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @MVP
  @US1260989
  @2018.PI03
  Scenario: US1260989::2 - [Unfinished] Integrate CLM with Examiner (Continued)
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

  @MVP
  @Siraj
  @US861033
  @2018.PI03
  Scenario: US861033::0 - [Continued] Integrate CLM with Examiner (Continued)
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @MVP
  @Siraj
  @US861033
  @2018.PI03
  Scenario: US861033::1 - [Continued] Integrate CLM with Examiner (Continued)
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @MVP
  @Siraj
  @US861033
  @2018.PI03
  Scenario: US861033::2 - [Continued] Integrate CLM with Examiner (Continued)
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

