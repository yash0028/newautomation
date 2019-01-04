# Last updated on 
@US1509655
@releaseUnknown
@iterationUnknown
Feature: US1509655 - Expire Market Lead

  @TC690165
  @Manual
  @Functional
  Scenario: TC690165 - [RL0]
    Given I am a User with access to maintain Entity information
    When a User in a Market Lead role is no longer is involved with an Entity
    And there is at least one other User in that same role
    Then I have the ability to deactivate the User from the Entity

