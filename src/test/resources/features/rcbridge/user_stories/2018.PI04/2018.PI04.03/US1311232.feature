# Last updated on 
@US1311232
@2018.PI04
@2018.PI04.03
@CMD2
@#MVP
@10/1_Physician
@Priority_2
@CMD
@F232004
Feature: US1311232 - Apply Provider Rate process rule during roster event process

  @TC572201
  @Automated
  @Functional
  @US1311232
  @2018.PI04
  @2018.PI04.03
  Scenario: TC572201 - [RL0]
    Given 'UHG_ProviderRoster_GeneratedRosterEvent' has value 'Add' or 'Cancel'
    When 'ProductGroup Provider Rate' is available from the CMD Contract database for the contract
    Then the 'Provider' rate process rule will be used for all provider records to determine qualifications for applying rate

  @TC572202
  @Automated
  @Functional
  @US1311232
  @2018.PI04
  @2018.PI04.03
  Scenario: TC572202 - [RL1]
    Given 'Provider' rate process rule successfully processed
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Provider Rate is applied to the provider record

  @TC572203
  @Automated
  @Functional
  @US1311232
  @2018.PI04
  @2018.PI04.03
  Scenario: TC572203 - [RL2]
    Given 'Provider' rate process rule successfully processed
    When the outcome result did not successfully slot to the table record
    Then the ProductGroup Provider Rate is not applied to the provider record
    And the transaction is logged as complete in the transaction database
    And a transaction message generated of 'Provider Record did not meet qualification for Loading'
    And the transaction record details including table, table record, and warning message generated are made available should users need to review

