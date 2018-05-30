# Last updated on 2018-05-29T16:52:58.989Z
@MVP
@Plus
Feature: F165529 - Setup Facility Workflow

  Scenario: US1041122
    Given a contract has been started
    When I see "Expected Completion Date"
    Then I am able to input a date in a MM/DD/YYYY format

