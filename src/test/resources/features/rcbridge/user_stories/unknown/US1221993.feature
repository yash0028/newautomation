# Last updated on 
@Facility
@US1221993
@releaseUnknown
@iterationUnknown
Feature: US1221993 - Capture 'Expected Completion' date - rate update

  @TC565004
  @Manual
  @Functional
  @Facility
  Scenario: TC565004 - [RL0]
    Given a contract has been started
    When I see "Expected Completion Date"
    Then I am able to input a date in a MM/DD/YYYY format

