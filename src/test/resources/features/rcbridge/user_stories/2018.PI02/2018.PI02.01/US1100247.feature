# Last updated on 
@#MVP
@US1100247
@2018.PI02
@2018.PI02.01
@releaseUnknown
@iterationUnknown
Feature: US1100247 - Domain service stub

  @TC701617
  @Manual
  @Functional
  @#MVP
  Scenario: TC701617 - [RL0]
    Given an event processes an update request event
    When the scenario simulates an update is ok
    Then a returned event transaction state

  @TC701626
  @Manual
  @Functional
  @#MVP
  Scenario: TC701626 - [RL1]
    Given an event processes an update request event
    When the scenario simulates an update has aborted
    Then a returned event transaction state

