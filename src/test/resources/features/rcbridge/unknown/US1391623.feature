# Last updated on 
@US1391623
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1391623 - SMGA Changed Counterparty TIN Maintenance Event System Notification

  @TC616916
  @Manual
  @Functional
  Scenario: TC616916 - [RL0]
    Given I am a User with access to maintain Contract information
    When I change a Counterparty TIN on a SMGA Contract
    Then the Contract Management Solution publishes a maintenance notification event

