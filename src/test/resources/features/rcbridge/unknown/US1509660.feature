# Last updated on 
@US1509660
@releaseUnknown
@iterationUnknown
Feature: US1509660 - Set Provider Advocate

  @TC690150
  @Manual
  @Functional
  Scenario: TC690150 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to assign a User to a Provider Advocate role in an Entity
    Then I have the ability to search the entire United directory to find the User
    And I can assign that User to the Provider Advocate role
    And I can set the Assignment Level for the User

