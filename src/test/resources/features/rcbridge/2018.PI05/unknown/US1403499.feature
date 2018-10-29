# Last updated on
@US1403499
@2018.PI05
@MVP
@Maintenance
@F240037
@releaseFuture
@iterationUnknown
Feature: US1403499 - Receive and recognize term update events/transactions from Exari

  @TC622453
  @Manual
  @Functional
  @US1403499
  @2018.PI05
  Scenario: TC622453 - [RL0]
    Given the OCM is subscribed to the Exari Business Event Type "TermsUpdated"
    When an "TermsUpdated" transaction is published
    Then OCM will recognize this transaction
    And OCM will trigger the data validation of the published roster data

