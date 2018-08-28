# Last updated on 
@CLM_UAT
@MSG
@US1050707
@2018.PI03
Feature: US1050707 - (MSG) Create microservice exposing Market Strategy grid data

  @TC515080
  @Automated
  @Acceptance
  Scenario: TC515080::0 - MSG Microservice Acceptance Test
    # Happy Path
    Given I have the ability to read the MS Access DB
    When I make a request to the microservice to read a record using the following fields:
      | specialty_codes | 007             |
      | state | AK    |
      | county | Haines |
      | market  | 0054405 |
    Then I receive all products that fit this criteria

  @TC515080
  @Automated
  @Acceptance
  Scenario: TC515080::1 - MSG Microservice Acceptance Test
    # Bad Path
    Given I have the ability to read the MS Access DB
    When I make a request to the microservice to read a record using the following fields:
      | specialties | XXX         |
      | state | MM    |
      | county | Abcd   |
      | market | 99999  |
    Then I receive a response with empty content

