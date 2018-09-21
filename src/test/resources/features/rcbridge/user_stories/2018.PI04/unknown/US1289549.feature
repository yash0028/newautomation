# Last updated on 
@US1289549
@2018.PI04
Feature: US1289549 - Contract Config Services - Update Contract Config record

  @TC564414
  @Automated
  @Functional
  Scenario: TC564414 - [RL0]
    Given a contract master override or exception has been deemed appropriate
    When the contract configuration detail record is accessed
    Then a service is available that records the override record information to the contract config record

