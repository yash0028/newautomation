# Last updated on 
@US1452103
@releaseUnknown
@iterationUnknown
Feature: US1452103 - BIC Market Indicator

  @TC672161
  @Manual
  @Functional
  Scenario: TC672161 - [RL0]
    Given I am an Administrative User
    When I update the Market Number on an Entity record
    Then the BIC Market Indicator is systematically updated to match the new Market Number

