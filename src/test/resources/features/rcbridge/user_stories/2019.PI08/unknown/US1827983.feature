# Last updated on 
@US1827983
@2019.PI08
@releaseUnknown
@iterationUnknown
Feature: US1827983 - Default sort of error screens

  @TC836515
  @Manual
  @Functional
  Scenario: TC836515 - [RL0]
    Given a user is viewing errors in CMD
    When reviewing the list of errors
    Then the view is defaulted to newest first

