# Last updated on 
@CLM_UAT
@MEG
@US1261015
@2018.PI03
Feature: US1261015 - [Unfinished] (MEG) Create microservice exposing Market Exception grid data

  @TC565769
  @Manual
  @Functional
  Scenario: TC565769 - [RL0]
    # As a consumer of MEG data
    Given I have the ability to read the MS SQL
    When I make a request to the microservice to read a record with fields:
      | state   | ALABAMA |
      | market | 1403   |
      | task      | Execution |
    Then I receive data that I would get from reading SQL db directly including the fields:
      | ruleName |
      | description |
      | links |
      | dateUpdated |

