# Last updated on 
@AM-Terminations
@Go_Live
@US1940563
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1940563 - Terminations - Repeat search

  @TC913328
  @Manual
  @Functional
  @AM-Terminations
  @Go_Live
  Scenario: TC913328 - [RL0]
    Given a terminations process is in process
    When more agreements need to be added
    Then the user can search for additional contracts
    And more contracts can be added to the process

