# Last updated on 2018-07-17T18:33:02.497Z
@MVP
@PI04
@Plus
Feature: F165529 - Setup Facility/ANC Workflow

  @2018.PI04
  Scenario: US1041122
    Given a contract has been started
    When I see "Expected Completion Date"
    Then I am able to input a date in a MM/DD/YYYY format

