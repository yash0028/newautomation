# Last updated on 
@US1509632
@releaseUnknown
@iterationUnknown
Feature: US1509632 - Update Negotiator

  @TC690148
  @Manual
  @Functional
  Scenario: TC690148 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to update a User in a Negotiator role in an Entity
    And there is at least one other User in that role
    Then I can update the role for the User
    And I can update the Assignment Level for the User

