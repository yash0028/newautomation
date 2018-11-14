# Last updated on 
@US1391588
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1391588 - SMGA Removed TIN Maintenance Event System Notification

  @TC616945
  @Manual
  @Functional
  Scenario: TC616945 - [RL0]
    Given I am a User with access to maintain Contract information
    When I remove a TIN from a SMGA Contract
    Then the Contract Management Solution publishes a maintenance notification event

