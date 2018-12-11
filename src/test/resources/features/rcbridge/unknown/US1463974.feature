# Last updated on 
@US1463974
@releaseUnknown
@iterationUnknown
Feature: US1463974 - Entity Manager Search

  @TC672212
  @Manual
  @Functional
  Scenario: TC672212 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to assign an Entity Manager to an Entity
    Then I have the ability to search the entire United directory to find the Entity Manager
    And I can assign that Entity Manager to the Entity
    And the telephone and email contact information about that Entity Manager is displayed in the Entity record

