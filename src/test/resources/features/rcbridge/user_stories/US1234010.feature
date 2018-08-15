# Last updated on 
@US1234010
@2018.PI03
Feature: US1234010 - [Continued] Exari Search API Implementation

  @TC535826
  @Manual
  @Functional
  Scenario: TC535826 - Validate the exari search api implementation
    Given an application wants to search contracts by any fields
    When the search API is called
    Then a list of contracts will be returned that matches the search criteria.

  @TC535830
  @Manual
  @Functional
  Scenario: TC535830 - Validate when the search api is down
    Given an application wants to search contracts by any fields
    When the Search API is called
    And the Search API is down
    Then verify how the system responds to the request

