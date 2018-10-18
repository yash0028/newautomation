# Last updated on
@US1289382
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F219005
@releasePresent
@iterationFuture
Feature: US1289382 - Contract Config Services - Contract Config search service

  @TC616506
  @Manual
  @Functional
  @US1289382
  @2018.PI04
  @2018.PI04.04
  Scenario: TC616506 - [RL0]
    Given a user needs to search the CMD summary database
    When the user has authorization to access the database records
    Then a service is made available to search the database records

  @TC616507
  @Manual
  @Functional
  @US1289382
  @2018.PI04
  @2018.PI04.04
  Scenario: TC616507 - [RL1]
    Given a user needs to search the CMD summary database
    When the user does NOT have authorization to access the database records
    Then a service is NOT available to search the database records
    And access is denied

