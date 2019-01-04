# Last updated on 
@US1509639
@releaseUnknown
@iterationUnknown
Feature: US1509639 - Update Health Care Economics

  @TC690153
  @Manual
  @Functional
  Scenario: TC690153 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to update a User in a Health Care Economics role in an Entity
    And there is at least one other User in that role
    Then I can update the role for the User
    And I can update the Assignment Level for the User

