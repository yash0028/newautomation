# Last updated on 
@US1509657
@releaseUnknown
@iterationUnknown
Feature: US1509657 - Set Medical Director

  @TC690154
  @Manual
  @Functional
  Scenario: TC690154 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to assign a User to a Medical Director role in an Entity
    Then I have the ability to search the entire United directory to find the User
    And I can assign that User to the Medical Director role
    And I can set the Assignment Level for the User

