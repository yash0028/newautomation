# Last updated on 
@US1509671
@releaseUnknown
@iterationUnknown
Feature: US1509671 - Expire Strategic Contracting Director

  @TC690134
  @Manual
  @Functional
  Scenario: TC690134 - [RL0]
    Given I am a User with access to maintain Entity information
    When a User in a Strategic Contracting Director role is no longer is involved with an Entity
    And there is at least one other User in that same role
    Then I have the ability to deactivate the User from the Entity

