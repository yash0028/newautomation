# Last updated on 
@US1509645
@releaseUnknown
@iterationUnknown
Feature: US1509645 - Expire Hospital Facility Advocate

  @TC690152
  @Manual
  @Functional
  Scenario: TC690152 - [RL0]
    Given I am a User with access to maintain Entity information
    When a User in a Hospital Facility Advocate role is no longer is involved with an Entity
    And there is at least one other User in that same role
    Then I have the ability to deactivate the User from the Entity

