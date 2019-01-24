# Last updated on 
@US1547238
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1547238 - Routing-NPPP Approves Retro

  @TC709184
  @Manual
  @Functional
  Scenario: TC709184 - [RL0]
    Given NPPP has Approved a retro request
    When the task is completed
    Then the retro request is in the monitor stage

