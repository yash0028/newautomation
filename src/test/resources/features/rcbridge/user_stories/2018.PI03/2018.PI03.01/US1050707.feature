# Last updated on 
@CLM_UAT
@MSG
@US1050707
@2018.PI03
@2018.PI03.01
@releaseUnknown
@iterationUnknown
Feature: US1050707 - (MSG) Create microservice exposing Market Strategy grid data

  @TC565752
  @Automated
  @Functional
  @CLM_UAT
  @MSG
  Scenario: TC565752 - [RL0] MSG Happy Path Validation
    # Happy Path
    Given I have the ability to read the MS Access DB
    When I make a request to the microservice to read a record using the following fields:
      | specialty_codes | 007     |
      | state           | AK      |
      | county          | Haines  |
      | market          | 0054405 |
    Then I receive all products that fit this criteria

  @TC565753
  @Automated
  @Functional
  @CLM_UAT
  @MSG
  Scenario: TC565753 - [RL1] MSG Bad Path Validation
    # Bad Path
    Given I have the ability to read the MS Access DB
    When I make a request to the microservice to read a record using the following fields:
      | specialty_codes | XXX   |
      | state           | MM    |
      | county          | Abcd  |
      | market          | 99999 |
    Then I receive a response with empty content

