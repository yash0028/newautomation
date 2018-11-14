# Last updated on 
@US1391586
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1391586 - SPA/PAT Removed TIN Maintenance Event System Notification

  @TC616936
  @Manual
  @Functional
  Scenario: TC616936 - [RL0]
    Given I am a User with access to maintain Contract information
    When I remove a TIN from a SPA/PAT Contract
    Then the Contract Management Solution publishes a maintenance notification event

