# Last updated on 
@US1544665
@2019.PI06
@2019.PI06.04
@releaseFuture
@iterationFuture
Feature: US1544665 - Routing- NPPP Denies Retro

  @TC709187
  @Manual
  @Functional
  Scenario: TC709187 - [RL0]
    Given the task is completed and reviewed by NPPP
    When NPPP selects "Deny" on the retro request
    Then the retro request is routed to the retro request initiator's queue

