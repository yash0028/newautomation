# Last updated on 
@US1289549
@2018.PI04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F219005
Feature: US1289549 - Contract Config Services - Update Contract Config record

  @TC564414
  @Automated
  @Functional
  @US1289549
  @2018.PI04
  Scenario: TC564414 - [RL0]
    Given a contract master override or exception has been deemed appropriate
    When the contract configuration detail record is accessed
    Then a service is available that records the override record information to the contract config record

