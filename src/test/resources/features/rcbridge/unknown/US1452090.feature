# Last updated on 
@US1452090
@releaseUnknown
@iterationUnknown
Feature: US1452090 - Market Number

  @TC672167
  @Manual
  @Functional
  Scenario: TC672167 - [RL0]
    Given I am an Administrative User
    When I update the Market Number on an Entity
    Then the Market Number is updated
    And the Region is systematically updated to match the new Market Number
    And the BIC Market is systematically updated to match the new Market Number
    And the Market Name is systematically updated to match the new Market Number

