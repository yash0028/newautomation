# Last updated on 
@US1509664
@releaseUnknown
@iterationUnknown
Feature: US1509664 - Update Strategic Account Manager

  @TC690141
  @Manual
  @Functional
  Scenario: TC690141 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to update a User in a Strategic Account Manager role in an Entity
    And there is at least one other User in that role
    Then I can update the role for the User
    And I can update the Assignment Level for the User

