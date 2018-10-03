# Last updated on 
@US1311235
@2018.PI04
@CMD2
@#MVP
@10/1_Physician
@CMD
@F232004
Feature: US1311235 - Apply Physician Specialty Rate process rule  during roster event process

  @TC572183
  @Automated
  @Functional
  @US1311235
  @2018.PI04
  Scenario: TC572183 - [RL1]
    Given 'Physician Specialty' rate process rule successfully processed
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Physician Specialty Rate is applied to the provider record

  @TC572182
  @Automated
  @Functional
  @US1311235
  @2018.PI04
  Scenario: TC572182 - [RL0]
    Given 'UHG_ProviderRoster_GeneratedRosterEvent' has value 'Add' or 'Cancel'
    When 'ProductGroup Physician Specialty Rate' is available from the CMD Contract database for the contract
    Then the 'Physician Specialty' rate process rule will be used to determine conditions appropriate to apply specified condition rate for ProductGroup

  @TC572186
  @Automated
  @Functional
  @US1311235
  @2018.PI04
  Scenario: TC572186 - [RL4]
    Given 'Physician Specialty' rate process rule successfully processed
    When the outcome result did not successfully slot to either record on the table
    Then ProductGroup Physician Specialty Rate or ProductGroup Physician Other Specialty Rate are not applied to the provider record
    And the transaction is logged as complete in the transaction database
    And a transaction message generated of 'Physician Record did not meet qualification for Loading'
    And the transaction record details including table, table record, and warning message generated are made available should users need to review

  @TC572185
  @Automated
  @Functional
  @US1311235
  @2018.PI04
  Scenario: TC572185 - [RL3]
    Given 'Physician Specialty' rate process rule continues to the next record in the table
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Physician Other Specialty Rate is applied to the provider record.

  @TC572184
  @Automated
  @Functional
  @US1311235
  @2018.PI04
  Scenario: TC572184 - [RL2]
    Given 'Physician Specialty' rate process rule successfully processed
    When the outcome result did not successfully slot to the table record
    Then the Physician Specialty rate process rule continues to the next record in the table

