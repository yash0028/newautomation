# Last updated on
@US1289549
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F219005
@releasePresent
@iterationFuture
Feature: US1289549 - Contract Config Services - Update Contract Config record

  @TC616503
  @Manual
  @Functional
  @US1289549
  @2018.PI04
  @2018.PI04.04
  Scenario: TC616503 - [RL0]
    Given a contract master override or exception has been deemed appropriate
    When the contract configuration detail record is accessed
    Then a service is available that records the override record information to the contract config record

