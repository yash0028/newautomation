# Last updated on 2018-07-30T18:25:40.516Z
@MVP
@PI04
@Plus
Feature: F165533 - Setup Rate Update/Change Workflow

  @Configuration_for_12/1/18
  Scenario: US1221993
    Given a contract has been started
    When I see "Expected Completion Date"
    Then I am able to input a date in a MM/DD/YYYY format

