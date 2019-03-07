# Last updated on 
@US1544665
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationFuture
Feature: US1544665 - Routing- NPPP Denies or Requests More Info Retro

  @TC709187
  @Manual
  @Functional
  Scenario: TC709187 - [RL0]
    Given the task is completed and reviewed by NPPP
    When NPPP selects "Deny" or "request more info" on the retro request
    Then the retro request is routed to the retro request initiator's queue

