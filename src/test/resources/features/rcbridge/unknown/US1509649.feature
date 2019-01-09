# Last updated on 
@US1509649
@releaseUnknown
@iterationUnknown
Feature: US1509649 - Update IT Owner

  @TC690160
  @Manual
  @Functional
  Scenario: TC690160 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to update a User in a IT Owner role in an Entity
    And there is at least one other User in that role
    Then I can update the role for the User
    And I can update the Assignment Level for the User

