# Last updated on 
@US1391622
@MVP
@Maintenance
@F236489
@releaseUnknown
@iterationUnknown
Feature: US1391622 - SPA/PAT Changed Counterparty TIN Maintenance Event System Notification

  @TC616935
  @Manual
  @Functional
  @US1391622
  Scenario: TC616935 - [RL0]
    Given I am a User with access to maintain Contract information
    When I change a Counterparty TIN on a SPA/PAT Contract
    Then the Contract Management Solution publishes a maintenance notification event

