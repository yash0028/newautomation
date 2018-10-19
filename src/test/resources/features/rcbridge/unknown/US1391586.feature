# Last updated on 
@US1391586
@MVP
@Maintenance
@F236489
@releaseUnknown
@iterationUnknown
Feature: US1391586 - SPA/PAT Removed TIN Maintenance Event System Notification

  @TC616936
  @Manual
  @Functional
  @US1391586
  Scenario: TC616936 - [RL0]
    Given I am a User with access to maintain Contract information
    When I remove a TIN from a SPA/PAT Contract
    Then the Contract Management Solution publishes a maintenance notification event

