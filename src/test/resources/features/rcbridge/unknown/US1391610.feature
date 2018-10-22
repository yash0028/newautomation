# Last updated on 
@US1391610
@MVP
@Maintenance
@F236489
@releaseUnknown
@iterationUnknown
Feature: US1391610 - SPA/PAT Added TIN Maintenance Event System Notification

  @TC616915
  @Manual
  @Functional
  @US1391610
  Scenario: TC616915 - [RL0]
    Given I am a User with access to maintain Contract information
    When I add a TIN to a SPA/PAT Contract
    Then the Contract Management Solution publishes a maintenance notification event

