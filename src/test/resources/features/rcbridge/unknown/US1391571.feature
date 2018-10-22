# Last updated on 
@US1391571
@MVP
@Maintenance
@F236489
@releaseUnknown
@iterationUnknown
Feature: US1391571 - SMGA Removed TIN Roster Maintenance User Notification

  @TC616933
  @Manual
  @Functional
  @US1391571
  Scenario: TC616933 - [RL0]
    Given I am a User with access to maintain Contract information
    When I remove a TIN from a SMGA Contract
    Then I receive a notification to begin the Roster Maintenance Process

