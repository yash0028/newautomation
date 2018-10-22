# Last updated on 
@US1391570
@MVP
@Maintenance
@F236489
@releaseUnknown
@iterationUnknown
Feature: US1391570 - SPA/PAT Removed TIN Roster Maintenance User Notification

  @TC616917
  @Manual
  @Functional
  @US1391570
  Scenario: TC616917 - [RL0]
    Given I am a User with access to maintain Contract information
    When I remove a TIN from a SPA/PAT Contract
    Then I receive a notification to begin the Roster Maintenance Process

