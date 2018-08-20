# Last updated on 
@MVP
@US1257320
@2018.PI03
Feature: US1257320 - Markets table microservice

  @TC547831
  @Automated
  @Functional
  Scenario: TC547831 - Query Markets table with invalid market number
    Given the market number is not listed in the Market UHC table
    When a query to the table is initiated
    Then the query response does not return the market record information
    And a record not found message is returned

  @TC547830
  @Automated
  @Functional
  Scenario: TC547830 - Query Market table with valid market number
    Given the market number is listed in the Market UHC table
    When a query to the table is initiated
    Then the query response includes the market record information
