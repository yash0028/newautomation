# Last updated on 
@US1509630
@releaseUnknown
@iterationUnknown
Feature: US1509630 - Set Negotiator

  @TC690131
  @Manual
  @Functional
  Scenario: TC690131 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to assign a User to a Negotiator role in an Entity
    Then I have the ability to search the entire United directory to find the User
    And I can assign that User in the Negotiator role
    And I can set the Assignment Level for the User

