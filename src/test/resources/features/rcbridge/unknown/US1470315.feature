# Last updated on 
@US1470315
@releaseUnknown
@iterationUnknown
Feature: US1470315 - Filter by Region

  @TC666520
  @Manual
  @Functional
  Scenario: TC666520 - [RL0]
    Given I am a User with access to view Entity information
    When I want to view all Entities within one or more specific Regions
    Then I have the ability to select the Region or Regions I would like to view
    And only Entities within the selected Regions are displayed

