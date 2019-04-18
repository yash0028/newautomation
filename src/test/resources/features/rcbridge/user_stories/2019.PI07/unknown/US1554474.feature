# Last updated on 
@US1554474
@2019.PI07
@releasePresent
@iterationUnknown
Feature: US1554474 - Identify user's manager for escalations and dashboards

  @TC714950
  @Manual
  @Functional
  Scenario: TC714950 - [RL0]
    Given a user exists in Activity Manager
    When viewing a user's data
    Then the user's manager's name is known
    And the user's manager's ID is known

