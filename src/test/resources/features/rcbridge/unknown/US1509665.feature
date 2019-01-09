# Last updated on 
@US1509665
@releaseUnknown
@iterationUnknown
Feature: US1509665 - Expire Strategic Account Manager

  @TC690142
  @Manual
  @Functional
  Scenario: TC690142 - [RL0]
    Given I am a User with access to maintain Entity information
    When a User in a Strategic Account Manager role is no longer is involved with an Entity
    And there is at least one other User in that same role
    Then I have the ability to deactivate the User from the Entity

