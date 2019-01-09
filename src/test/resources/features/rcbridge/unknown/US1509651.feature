# Last updated on 
@US1509651
@releaseUnknown
@iterationUnknown
Feature: US1509651 - Set Market Lead

  @TC690163
  @Manual
  @Functional
  Scenario: TC690163 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to assign a User to a Market Lead role in an Entity
    Then I have the ability to search the entire United directory to find the User
    And I can assign that User to the Market Lead role
    And I can set the Assignment Level for the User

