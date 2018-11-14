# Last updated on 
@US1391617
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1391617 - SPA/PAT Added Counterparty TIN Maintenance Event System Notification

  @TC616920
  @Manual
  @Functional
  Scenario: TC616920 - [RL0]
    Given I am a User with access to maintain Contract information
    When I add a Counterparty TIN to a SPA/PAT Contract
    Then the Contract Management Solution publishes a maintenance notification event

