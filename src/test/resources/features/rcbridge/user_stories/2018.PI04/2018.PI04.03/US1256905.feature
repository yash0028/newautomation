# Last updated on 
@US1256905
@2018.PI04
@2018.PI04.03
@MVP
@10/1_Physician
@Priority_1
@CMD
@Amrutha
@F209320
Feature: US1256905 - Create CLM Rule Table

  @TC603981
  @Manual
  @Functional
  @US1256905
  @2018.PI04
  @2018.PI04.03
  Scenario: TC603981 - [RL1]
    Given rules exist
    When the rules need to be applied during contract processing
    Then the rules are cycled through
    And the results applied during the contract process

  @TC603982
  @Manual
  @Functional
  @US1256905
  @2018.PI04
  @2018.PI04.03
  Scenario: TC603982 - [RL2]
    Given rules exist
    When the rule details need to be accessed
    Then a table exists in the DB
    And the details for each rule is accessible

  @TC564623
  @Automated
  @Functional
  @US1256905
  @2018.PI04
  @2018.PI04.03
  Scenario: TC564623 - [RL0]
    Given rules exist
    When the rules need to be stored
    Then a table exists in the database

