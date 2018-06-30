# Last updated on 2018-06-29T18:41:02.755Z
@MVP
@PI04
@Plus
Feature: F165529 - Setup Facility/ANC Workflow

  Scenario: US1041122
    Given a contract has been started
    When I see "Expected Completion Date"
    Then I am able to input a date in a MM/DD/YYYY format

