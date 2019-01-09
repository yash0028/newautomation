# Last updated on 
@US1509647
@releaseUnknown
@iterationUnknown
Feature: US1509647 - Set IT Owner

  @TC690151
  @Manual
  @Functional
  Scenario: TC690151 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to assign a User to an IT Owner role in an Entity
    Then I have the ability to search the entire United directory to find the User
    And I can assign that User to the IT Owner role
    And I can set the Assignment Level for the User

