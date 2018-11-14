# Last updated on 
@US1391625
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1391625 - SPGA Changed Counterparty TIN Maintenance Event System Notification

  @TC616939
  @Manual
  @Functional
  Scenario: TC616939 - [RL0]
    Given I am a User with access to maintain Contract information
    When I change a Counterparty TIN on a SPGA Contract
    Then the Contract Management Solution publishes a maintenance notification event

