# Last updated on 
@US1221993
@MVP
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1221993 - Capture 'Expected Completion' date - rate update

  @TC565004
  @Automated
  @Functional
  Scenario: TC565004 - [RL0]
    Given a contract has been started
    When I see "Expected Completion Date"
    Then I am able to input a date in a MM/DD/YYYY format

