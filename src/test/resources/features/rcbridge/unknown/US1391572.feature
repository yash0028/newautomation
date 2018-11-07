# Last updated on 
@US1391572
@MVP
@Maintenance
@releaseUnknown
@iterationUnknown
Feature: US1391572 - SPGA Removed TIN Roster Maintenance User Notification

  @TC616932
  @Manual
  @Functional
  Scenario: TC616932 - [RL0]
    Given I am a User with access to maintain Contract information
    When I remove a TIN from a SPGA Contract
    Then I receive a notification to begin the Roster Maintenance Process

