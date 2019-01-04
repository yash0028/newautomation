# Last updated on 
@US1509650
@releaseUnknown
@iterationUnknown
Feature: US1509650 - Expire IT Owner

  @TC690149
  @Manual
  @Functional
  Scenario: TC690149 - [RL0]
    Given I am a User with access to maintain Entity information
    When a User in a IT Owner role is no longer is involved with an Entity
    And there is at least one other User in that same role
    Then I have the ability to deactivate the User from the Entity

