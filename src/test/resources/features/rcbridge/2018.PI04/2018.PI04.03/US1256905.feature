# Last updated on 
@US1256905
@2018.PI04
@2018.PI04.03
@MVP
@10/1_Physician
@Priority_1
@CMD
@Amrutha
@releasePresent
@iterationPast
Feature: US1256905 - Create CLM Rule Table

  @TC615404
  @Manual
  @Functional
  Scenario: TC615404 - [RL2]
    Given rules exist
    When the rule details need to be accessed
    Then a table exists in the DB
    And the details for each rule is accessible

  @TC615403
  @Manual
  @Functional
  Scenario: TC615403 - [RL1]
    Given rules exist
    When the rules need to be applied during contract processing
    Then the rules are cycled through
    And the results applied during the contract process

  @TC615402
  @Manual
  @Functional
  Scenario: TC615402 - [RL0]
    Given rules exist
    When the rules need to be stored
    Then a table exists in the database

