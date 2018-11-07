# Last updated on 
@US1391612
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1391612 - SPGA Added TIN Maintenance Event System Notification

  @TC616943
  @Manual
  @Functional
  Scenario: TC616943 - [RL0]
    Given I am a User with access to maintain Contract information
    When I add a TIN to a SPGA Contract
    Then the Contract Management Solution publishes a maintenance notification event

