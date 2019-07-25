# Last updated on 
@Shweta
@US1891897
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationPresent
Feature: US1891897 - Identify user's manager for escalations and dashboards - create delegate

  @TC874168
  @Manual
  @Functional
  @Shweta
  Scenario: TC874168 - [RL0]
    Given a user exists in Activity Manager
    When viewing a user's data
    Then the user's manager's name is known
    And the user's manager's ID is known

