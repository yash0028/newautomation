# Last updated on 
@US1391620
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1391620 - SPGA Added Counterparty TIN Maintenance Event System Notification

  @TC616946
  @Manual
  @Functional
  Scenario: TC616946 - [RL0]
    Given I am a User with access to maintain Contract information
    When I add a Counterparty TIN to a SPGA Contract
    Then the Contract Management Solution publishes a maintenance notification event

