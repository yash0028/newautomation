# Last updated on 
@MVP
@US1229421
@2018.PI03
Feature: US1229421 - Markets table

  @TC547622
  @Automated
  @Functional
  Scenario: TC547622 - Query Market table with invalid market number
    Given the market number is not listed in the Market UHC table
    When a query to the table is initiated
    Then the query response does not return the market record information
    And a record not found message is returned

  @TC547621
  @Automated
  @Functional
  Scenario: TC547621 - Query Market table with valid market number
    Given the market number is listed in the Market UHC table
    When a query to the table is initiated
    Then the query response includes the market record information

