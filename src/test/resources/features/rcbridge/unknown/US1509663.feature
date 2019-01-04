# Last updated on 
@US1509663
@releaseUnknown
@iterationUnknown
Feature: US1509663 - Set Strategic Account Manager

  @TC690140
  @Manual
  @Functional
  Scenario: TC690140 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to assign a User to a Strategic Account Manager role in an Entity
    Then I have the ability to search the entire United directory to find the User
    And I can assign that User to the Strategic Account Manager role
    And I can set the Assignment Level for the User

