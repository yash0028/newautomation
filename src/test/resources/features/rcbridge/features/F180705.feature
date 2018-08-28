# Last updated on 
@MVP
@Plus
@Priority_1
@CLM_Exari
@Exari_Microservice
@F180705
Feature: F180705 - Exari Microservice Complete Integration of CLM with MSG - Optum and Exari

  @CLM_UAT
  @MSG
  @US1009573
  @2018.PI04
  Scenario: US1009573 - [Continued] Create External Data Query to MSG
    When the MSG microservice is called from Exari
    Then a valid response is returned

  @CLM_UAT
  @MSG
  @US1050707
  @2018.PI03
  Scenario: US1050707::0 - (MSG) Create microservice exposing Market Strategy grid data
    # Happy Path
    Given I have the ability to read the MS Access DB
    When I make a request to the microservice to read a record using the following fields:
      | specialty_codes | 007             |
      | state | AK    |
      | county | Haines |
      | market  | 0054405 |
    Then I receive all products that fit this criteria

  @CLM_UAT
  @MSG
  @US1050707
  @2018.PI03
  Scenario: US1050707::1 - (MSG) Create microservice exposing Market Strategy grid data
    # Bad Path
    Given I have the ability to read the MS Access DB
    When I make a request to the microservice to read a record using the following fields:
      | specialty_codes | XXX             |
      | state | MM    |
      | county | Abcd   |
      | market | 99999  |
    Then I receive a response with empty content

  @CLM_UAT
  @MSG
  @US1261008
  @2018.PI03
  Scenario: US1261008 - [Unfinished] Create External Data Query to MSG
    When the MSG microservice is called
    Then a valid response is returned

