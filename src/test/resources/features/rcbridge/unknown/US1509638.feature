# Last updated on 
@US1509638
@releaseUnknown
@iterationUnknown
Feature: US1509638 - Set Health Care Economics

  @TC690135
  @Manual
  @Functional
  Scenario: TC690135 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to assign a User to a Health Care Economics role in an Entity
    Then I have the ability to search the entire United directory to find the User
    And I can assign that User to the Health Care Economics role
    And I can set the Assignment Level for the User

