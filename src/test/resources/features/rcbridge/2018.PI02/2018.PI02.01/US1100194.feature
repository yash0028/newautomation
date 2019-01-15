# Last updated on 
@CLM_UAT
@US1100194
@2018.PI02
@2018.PI02.01
@MVP
@PI02_Top3
@Plus
@Parity
@releasePast
@iterationPast
Feature: US1100194 - Downstream NBD updater service stub

  @TC701613
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701613 - [RL0]
    Given an event processes an update request event
    When the scenario simulates an update is successful
    Then a returned event transaction state

  @TC701629
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC701629 - [RL1]
    Given an event processes an update request event
    When the scenario simulates an update has failed
    Then a returned event transaction state

