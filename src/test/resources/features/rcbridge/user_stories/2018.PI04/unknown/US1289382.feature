# Last updated on 
@US1289382
@2018.PI04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F219005
Feature: US1289382 - Contract Config Services - Contract Config search service

  @TC564642
  @Automated
  @Functional
  @US1289382
  @2018.PI04
  Scenario: TC564642 - [RL0]
    Given a user needs to search the CMD summary database
    When the user has authorization to access the database records
    Then a service is made available to search the database records

  @TC564643
  @Automated
  @Functional
  @US1289382
  @2018.PI04
  Scenario: TC564643 - [RL1]
    Given a user needs to search the CMD summary database
    When the user does NOT have authorization to access the database records
    Then a service is NOT available to search the database records
    And access is denied

