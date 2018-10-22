# Last updated on 
@US1391590
@MVP
@Maintenance
@F236489
@releaseUnknown
@iterationUnknown
Feature: US1391590 - SPGA Removed TIN Maintenance Event System Notification

  @TC616941
  @Manual
  @Functional
  @US1391590
  Scenario: TC616941 - [RL0]
    Given I am a User with access to maintain Contract information
    When I remove a TIN from a SPGA Contract
    Then the Contract Management Solution publishes a maintenance notification event

