# Last updated on 
@US1470318
@releaseUnknown
@iterationUnknown
Feature: US1470318 - Filter by Market

  @TC666521
  @Manual
  @Functional
  Scenario: TC666521 - [RL0]
    Given I am a User with access to view Entity information
    When I want to view all Entities within one or more specific Markets
    Then I have the ability to select the Market or Markets I would like to view
    And only Entities within the selected Markets are displayed

