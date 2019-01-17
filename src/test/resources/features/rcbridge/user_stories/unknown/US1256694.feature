# Last updated on 
@US1256694
@releaseUnknown
@iterationUnknown
Feature: US1256694 - Access and security management

  @TC701687
  @Manual
  @Functional
  Scenario: TC701687 - [RL0]
    Given a user requests view-only permissions to the Provider Taxonomy Grid table
    When the contract system administrator approves the request
    Then the user is authorized access to view the Provider Taxonomy Grid data

  @TC701708
  @Manual
  @Functional
  Scenario: TC701708 - [RL1]
    Given a user requests update permissions to the Provider Taxonomy Grid table
    When a contract system administrator approves the request
    Then the user is authorized to perform maintenance to the Provider Taxonomy Grid table

  @TC701718
  @Manual
  @Functional
  Scenario: TC701718 - [RL2]
    Given a user requests access ot the Provider Taxonomy Grid data
    When the contract system administrator does not approve the request
    Then the user is not granted permissions to the Provider Taxonomy Grid table
    And the user receives a message that they are not authorized to access

