# Last updated on 
@MVP
@PI04
@Plus
@F165533
Feature: F165533 - Setup Rate Update/Change Workflow

  @US1221993
  @Configuration_for_12/1/18
  Scenario: US1221993 - Capture 'Expected Completion' date - rate update
    Given a contract has been started
    When I see "Expected Completion Date"
    Then I am able to input a date in a MM/DD/YYYY format

