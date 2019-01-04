# Last updated on 
@US1509641
@releaseUnknown
@iterationUnknown
Feature: US1509641 - Expire Health Care Economics

  @TC690166
  @Manual
  @Functional
  Scenario: TC690166 - [RL0]
    Given I am a User with access to maintain Entity information
    When a User in a Health Care Economics role is no longer is involved with an Entity
    And there is at least one other User in that same role
    Then I have the ability to deactivate the User from the Entity

