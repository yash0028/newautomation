# Last updated on 
@US1466822
@releaseUnknown
@iterationUnknown
Feature: US1466822 - Number of Days since Last Reviewed

  @TC672203
  @Manual
  @Functional
  Scenario: TC672203 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I am viewing information about a Tax ID associated to an Entity
    Then I can see the number of calendar days elapsed since the last verification for each Tax ID associated to the Entity

