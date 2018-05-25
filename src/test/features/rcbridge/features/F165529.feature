# Last updated on 2018-05-24T17:50:38.882Z
@MVP
@Plus
Feature: F165529 - Setup Facility Workflow

  Scenario: US1041122
    Given a contract has been started
    When I see "Expected Completion Date"
    Then I am able to input a date in a MM/DD/YYYY format

