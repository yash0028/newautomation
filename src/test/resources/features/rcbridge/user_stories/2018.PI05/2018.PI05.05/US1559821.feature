# Last updated on 
@US1559821
@2018.PI05
@2018.PI05.05
@releaseUnknown
@iterationUnknown
Feature: US1559821 - Fix Duplicate Fields Optum-Exari

  @TC714951
  @Manual
  @Functional
  Scenario: TC714951 - [RL0]
    When I make a request to the microservice to read a record using the following fields:
      | specialty_codes | 007     |
      | state           | AK      |
      | county          | Haines  |
      | market          | 0054405 |
    Then I receive a response from the MSG service with no duplicate fields
    And the fields from the MSG response start with a capital letter

