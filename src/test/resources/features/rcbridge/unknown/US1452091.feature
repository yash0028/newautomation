# Last updated on 
@US1452091
@releaseUnknown
@iterationUnknown
Feature: US1452091 - Region

  @TC672164
  @Manual
  @Functional
  Scenario: TC672164 - [RL0]
    Given I am an Administrative User
    When I update the Market Number on an Entity record
    Then the Region is systematically updated to match the new Market Number

