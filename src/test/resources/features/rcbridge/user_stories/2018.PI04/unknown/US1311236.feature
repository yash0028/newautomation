# Last updated on 
@US1311236
@2018.PI04
@CMD2
@#MVP
@10/1_Physician
@CMD
@F232004
Feature: US1311236 - Apply Professional Specialty Rate process rule  during roster event process

  @TC572206
  @Automated
  @Functional
  @US1311236
  @2018.PI04
  Scenario: TC572206 - [RL1]
    Given 'Professional Specialty' rate process rule successfully processed
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Professional Specialty Rate is applied to the provider record

  @TC572205
  @Automated
  @Functional
  @US1311236
  @2018.PI04
  Scenario: TC572205 - [RL0]
    Given 'UHG_ProviderRoster_GeneratedRosterEvent' has value 'Add' or 'Cancel'
    When 'ProductGroup Professional Specialty Rate' is available from the CMD Contract database for the contract
    Then the 'Professional Specialty' rate process rule will be used to determine conditions appropriate to apply specified condition rate for ProductGroup

  @TC572209
  @Automated
  @Functional
  @US1311236
  @2018.PI04
  Scenario: TC572209 - [RL4]
    Given 'Professional Specialty' rate process rule successfully processed
    When the outcome result did not successfully slot to either record on the table
    Then ProductGroup Professional Specialty Rate or ProductGroup Professional Other Specialty Rate are not applied to the provider record
    And the transaction is logged as complete in the transaction database
    And a transaction message generated of 'Professional Record did not meet qualification for Loading'
    And the transaction record details including table, table record, and warning message generated are made available should users need to review

  @TC572208
  @Automated
  @Functional
  @US1311236
  @2018.PI04
  Scenario: TC572208 - [RL3]
    Given 'Professional Specialty' rate process rule continues to the next record in the table
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Professional Other Specialty Rate is applied to the provider record.

  @TC572207
  @Automated
  @Functional
  @US1311236
  @2018.PI04
  Scenario: TC572207 - [RL2]
    Given 'Professional Specialty' rate process rule successfully processed
    When the outcome result did not successfully slot to the table record
    Then the Professional Specialty rate process rule continues to the next record in the table

