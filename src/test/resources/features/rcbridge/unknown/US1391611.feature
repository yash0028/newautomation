# Last updated on 
@US1391611
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1391611 - SMGA Added TIN Maintenance Event System Notification

  @TC616905
  @Manual
  @Functional
  Scenario: TC616905 - [RL0]
    Given I am a User with access to maintain Contract information
    When I add a TIN to a SMGA Contract
    Then the Contract Management Solution publishes a maintenance notification event

