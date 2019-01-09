# Last updated on 
@US1509637
@releaseUnknown
@iterationUnknown
Feature: US1509637 - Expire Negotiator

  @TC690159
  @Manual
  @Functional
  Scenario: TC690159 - [RL0]
    Given I am a User with access to maintain Entity information
    When a User in a Negotiation role is no longer is involved with an Entity
    And there is at least one other User in that same role
    Then I have the ability to deactivate the User from the Entity

