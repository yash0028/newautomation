# Last updated on 
@Optum
@AM-Terminations
@US1446283
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1446283 - Integration - Data from PES 2.0 for Provider Table Only

  @TC720262
  @Manual
  @Functional
  @Optum
  @AM-Terminations
  Scenario: TC720262 - [RL0]
    Given that I have created a new termination event and selected all the contracts associated with my term
    When I move to the Initiate Termination task
    Then the the Provider Table on the Provider Details tab will be populated with the PCP Indicator and County fields

