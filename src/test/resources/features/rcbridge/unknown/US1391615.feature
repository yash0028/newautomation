# Last updated on 
@US1391615
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1391615 - SMGA Removed Counterparty TIN Maintenance Event System Notification

  @TC616929
  @Manual
  @Functional
  Scenario: TC616929 - [RL0]
    Given I am a User with access to maintain Contract information
    When I remove a Counterparty TIN from a SMGA Contract
    Then the Contract Management Solution publishes a maintenance notification event

