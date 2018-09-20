# Last updated on 
@US1311234
@2018.PI04
Feature: US1311234 - Apply Professional Rate process rule  during roster event process

  @TC572217
  @Automated
  @Functional
  Scenario: TC572217 - [RL0]
    Given 'UHG_ProviderRoster_GeneratedRosterEvent' has value 'Add' or 'Cancel'
    When 'ProductGroup Professional Rate' is available from the CMD Contract database for the contract
    Then the 'Professional' rate process rule will be used to determine conditions appropriate to apply specified condition rate for ProductGroup

  @TC572218
  @Automated
  @Functional
  Scenario: TC572218 - [RL1]
    Given 'Professional' rate process rule successfully processed
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Professional Rate is applied to the provider record

  @TC572219
  @Automated
  @Functional
  Scenario: TC572219 - [RL2]
    Given 'Professional' rate process rule successfully processed
    When the outcome result did not successfully slot to the table record
    Then the ProductGroup Professional Rate is not applied to the provider record
    And the transaction is logged as complete in the transaction database
    And a transaction message generated of 'Professional Record did not meet qualification for Loading'
    And the transaction record details including table, table record, and warning message generated are made available should users need to review

