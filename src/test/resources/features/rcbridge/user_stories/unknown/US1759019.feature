# Last updated on 
@US1759019
@releaseUnknown
@iterationUnknown
Feature: US1759019 - Dashboard for retro

  @TC807255
  @Manual
  @Functional
  Scenario: TC807255 - [RL0]
    Given retro approval requests exist
    When I am viewing dashboards
    Then I am able to see the counts of open retro approval requests by open task

