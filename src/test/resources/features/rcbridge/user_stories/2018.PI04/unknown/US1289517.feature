# Last updated on 
@US1289517
@2018.PI04
Feature: US1289517 - Contract Config Services - Contract Master overrides service

  @TC565434
  @Automated
  @Functional
  Scenario: TC565434 - [RL0]
    Given a contract master override or exception was recorded to the database
    When override record query is needed to locate details in the database
    Then a service is available to search and respond with override record details

  @TC565435
  @Automated
  @Functional
  Scenario: TC565435 - [RL1]
    Given a contract master override or exception was NOT recorded to the database
    When override record query is needed to locate record details in the database
    Then a service is available to search and respond with no details
    And a response message of no record details found
