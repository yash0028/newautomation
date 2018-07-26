# Last updated on 2018-07-18T19:24:21.701Z
@MVP
@PI04
@Plus
Feature: F165533 - Setup Rate Update/Change Workflow

  @2018.PI04
  Scenario: US1221993
    Given a contract has been started
    When I see "Expected Completion Date"
    Then I am able to input a date in a MM/DD/YYYY format

