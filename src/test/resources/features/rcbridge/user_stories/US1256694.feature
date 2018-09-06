# Last updated on 
@US1256694
@2018.PI03
Feature: US1256694 - Access and security management

  @TC564935
  @Automated
  @Functional
  Scenario: TC564935 - [RL0]
    Given a user requests view-only permissions to the Provider Taxonomy Grid table
    When the contract system administrator approves the request
    Then the user is authorized access to view the Provider Taxonomy Grid data

  @TC564936
  @Automated
  @Functional
  Scenario: TC564936 - [RL1]
    Given a user requests update permissions to the Provider Taxonomy Grid table
    When a contract system administrator approves the request
    Then the user is authorized to perform maintenance to the Provider Taxonomy Grid table

  @TC564937
  @Automated
  @Functional
  Scenario: TC564937 - [RL2]
    Given a user requests access ot the Provider Taxonomy Grid data
    When the contract system administrator does not approve the request
    Then the user is not granted permissions to the Provider Taxonomy Grid table
    And the user receives a message that they are not authorized to access

