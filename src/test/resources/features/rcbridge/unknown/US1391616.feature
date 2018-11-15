# Last updated on 
@US1391616
@releaseUnknown
@iterationUnknown
Feature: US1391616 - SPGA Removed Counterparty TIN Maintenance Event System Notification

  @TC616930
  @Manual
  @Functional
  Scenario: TC616930 - [RL0]
    Given I am a User with access to maintain Contract information
    When I remove a Counterparty TIN from a SPGA Contract
    Then the Contract Management Solution publishes a maintenance notification event

