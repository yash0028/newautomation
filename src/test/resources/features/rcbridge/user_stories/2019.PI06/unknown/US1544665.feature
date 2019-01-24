# Last updated on 
@US1544665
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1544665 - Routing- NPPP Denies Retro

  @TC709187
  @Manual
  @Functional
  Scenario: TC709187 - [RL0]
    Given a retro approval request exists with the NPPP
    When NPPP denies the retro request
    Then the retro approval request is assigned and routed to the retro request initator

