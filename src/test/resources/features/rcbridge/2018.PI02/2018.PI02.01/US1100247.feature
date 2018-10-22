# Last updated on 
@#MVP
@US1100247
@2018.PI02
@2018.PI02.01
@MVP
@PI02_Top3
@Plus
@Parity
@F175417
@releasePast
@iterationPast
Feature: US1100247 - Domain service stub

  @TC565356
  @Automated
  @Functional
  @#MVP
  @US1100247
  @2018.PI02
  @2018.PI02.01
  Scenario: TC565356 - [RL0]
    Given an event processes an update request event
    When the scenario simulates an update is ok
    Then a returned event transaction state

  @TC565357
  @Automated
  @Functional
  @#MVP
  @US1100247
  @2018.PI02
  @2018.PI02.01
  Scenario: TC565357 - [RL1]
    Given an event processes an update request event
    When the scenario simulates an update has aborted
    Then a returned event transaction state

