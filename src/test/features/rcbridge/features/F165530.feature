# Last updated on 2018-07-09T15:33:40.440Z
@MVP
@PI04
@Plus
Feature: F165530 - Setup Physician Workflow (UHN led)

  Scenario: US1160507
    Given a contract has been started
    When I see "Expected Completion Date"
    Then I am able to input a date in a MM/DD/YYYY format

