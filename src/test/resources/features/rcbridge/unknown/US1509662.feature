# Last updated on 
@US1509662
@releaseUnknown
@iterationUnknown
Feature: US1509662 - Expire Provider Advocate

  @TC690164
  @Manual
  @Functional
  Scenario: TC690164 - [RL0]
    Given I am a User with access to maintain Entity information
    When a User in a Provider Advocate role is no longer is involved with an Entity
    And there is at least one other User in that same role
    Then I have the ability to deactivate the User from the Entity

