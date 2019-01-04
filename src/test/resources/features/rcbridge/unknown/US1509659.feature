# Last updated on 
@US1509659
@releaseUnknown
@iterationUnknown
Feature: US1509659 - Expire Medical Director

  @TC690143
  @Manual
  @Functional
  Scenario: TC690143 - [RL0]
    Given I am a User with access to maintain Entity information
    When a User in a Medical Director role is no longer is involved with an Entity
    And there is at least one other User in that same role
    Then I have the ability to deactivate the User from the Entity

