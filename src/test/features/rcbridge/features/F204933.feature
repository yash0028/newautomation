# Last updated on 2018-07-06T20:16:36.540Z
@MVP
@PI02_Top3
@Domain_Microservice
@Parity
Feature: F204933 - DOMAIN MS Optum - Create Provider Contract Query API (Inquiry) (Part 2)

  @2018.PI03
  @2018.PI03.01
  Scenario: US1179431::0
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @2018.PI03
  @2018.PI03.01
  Scenario: US1179431::1
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @2018.PI03
  @2018.PI03.01
  Scenario: US1179431::2
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

