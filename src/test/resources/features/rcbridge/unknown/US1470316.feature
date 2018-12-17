# Last updated on 
@US1470316
@releaseUnknown
@iterationUnknown
Feature: US1470316 - Filter by State

  @TC666522
  @Manual
  @Functional
  Scenario: TC666522 - [RL0]
    Given I am a User with access to view Entity information
    When I want to view all Entities within one or more specific States
    Then I have the ability to select the State or States I would like to view
    And only Entities within the selected States are displayed

