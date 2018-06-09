# Last updated on 2018-06-08T14:11:33.869Z
@MVP
@PI04
@Plus
Feature: F165530 - Setup Physician Workflow (UHN led)

  Scenario: US1160507
    Given a contract has been started
    When I see "Expected Completion Date"
    Then I am able to input a date in a MM/DD/YYYY format

