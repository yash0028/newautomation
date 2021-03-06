# Last updated on 
@MVP
@US1229421
@2018.PI03
@2018.PI03.03
@releasePast
@iterationPast
Feature: US1229421 - Markets table

  @CLM_UAT
  @TC554293
  @Manual
  @Acceptance
  @MVP
  Scenario: TC554293 - Validate the query response when a valid market number is passed
    Given the market number is listed in the Market UHC table
    When a query to the table is initiated
    Then the query response includes the market record information

  @CLM_UAT
  @TC554294
  @Manual
  @Acceptance
  @MVP
  Scenario: TC554294 - Validate the query response when invalid market number is passed
    Given the market number is not listed in the Market UHC table
    When a query to the table is initiated
    Then the query response does not return the market record information
    And a record not found message is returned

  @TC547621
  @Manual
  @Functional
  @MVP
  Scenario: TC547621 - [RL0] Query Markets table with valid market number
    Given the market number is listed in the Market UHC table
    When a query to the table is initiated
    Then the query response includes the market record information

  @TC547622
  @Manual
  @Functional
  @MVP
  Scenario: TC547622 - [RL1] Query Markets table with invalid market number
    Given the market number is not listed in the Market UHC table
    When a query to the table is initiated
    Then the query response does not return the market record information
    And a record not found message is returned

