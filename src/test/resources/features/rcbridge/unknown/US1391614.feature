# Last updated on 
@US1391614
@MVP
@Maintenance
@F236489
@releaseUnknown
@iterationUnknown
Feature: US1391614 - SPA/PAT Removed Counterparty TIN Maintenance Event System Notification

  @TC616927
  @Manual
  @Functional
  @US1391614
  Scenario: TC616927 - [RL0]
    Given I am a User with access to maintain Contract information
    When I remove a Counterparty TIN from a SPA/PAT Contract
    Then the Contract Management Solution publishes a maintenance notification event

