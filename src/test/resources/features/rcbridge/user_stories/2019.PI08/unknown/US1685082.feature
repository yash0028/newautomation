# Last updated on 
@US1685082
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1685082 - Implement Holiday Calendar for due dates

  @TC807256
  @Manual
  @Functional
  Scenario: TC807256 - [RL0]
    Given a process is running
    When a due date is calculated
    Then the holiday calendar is used

