# Last updated on 
@MVP
@PI02_Top3
@Domain_Microservice
@Parity
@Contract_Query
@F204933
Feature: F204933 - DOMAIN MS Optum - Create Provider Contract Query API (Inquiry) (Part 2)

  @US1179431
  @2018.PI03
  Scenario: US1179431::0 - [Continued] PIC Implementation
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made
    Then The contract data is sent back to PIC or Examiner

  @US1179431
  @2018.PI03
  Scenario: US1179431::1 - [Continued] PIC Implementation
    Given A contract inquiry request from PIC or Examiner
    When A REST Service call is made with invalid data
    Then The service will return an error

  @US1179431
  @2018.PI03
  Scenario: US1179431::2 - [Continued] PIC Implementation
    Given A contract request from PIC or Examiner
    When The REST service is unavailable
    Then An server error will be returned

