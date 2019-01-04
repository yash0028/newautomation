# Last updated on 
@US1452093
@releaseUnknown
@iterationUnknown
Feature: US1452093 - Market Name

  @TC672162
  @Manual
  @Functional
  Scenario: TC672162 - [RL0]
    Given I am an Administrative User
    When I update the Market Number on an Entity record
    Then the Market Name is systematically updated to match the new Market Number

