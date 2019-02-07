# Last updated on 
@US1391570
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1391570 - SPA/PAT, SMGA,SPGA Removed TIN Roster Maintenance User Notification

  @TC616917
  @Manual
  @Functional
  Scenario: TC616917 - [RL0]
    Given I am a User with access to maintain Contract information
    When I remove a TIN from a SPA/PAT, SMGA,SPGA Contract
    Then I receive a notification to begin the Roster Maintenance Process

