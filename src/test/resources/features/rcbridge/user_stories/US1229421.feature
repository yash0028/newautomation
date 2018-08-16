# Last updated on 
@MVP
@US1229421
@2018.PI03
Feature: US1229421 - Markets table

  @TC547622
  @Manual
  @Functional
  Scenario: TC547622 - Query Markets table with invalid market number
    Given the market number is not listed in the Market UHC table
    When a query to the table is initiated
    Then the query response does not return the market record information
    And a record not found message is returned

  @TC547621
  @Manual
  @Functional
  Scenario: TC547621 - Query Markets table with valid market number
    Given the market number is listed in the Market UHC table
    When a query to the table is initiated
    Then the query response includes the market record information

