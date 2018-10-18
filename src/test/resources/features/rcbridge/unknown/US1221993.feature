# Last updated on 
@US1221993
@Configuration_for_4/1/19
@MVP
@PI04
@Plus
@F165533
@releasePresent
@iterationUnknown
Feature: US1221993 - Capture 'Expected Completion' date - rate update

  @TC565004
  @Automated
  @Functional
  @US1221993
  @Configuration_for_4/1/19
  Scenario: TC565004 - [RL0]
    Given a contract has been started
    When I see "Expected Completion Date"
    Then I am able to input a date in a MM/DD/YYYY format

