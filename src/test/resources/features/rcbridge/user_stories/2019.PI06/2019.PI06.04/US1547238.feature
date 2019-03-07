# Last updated on 
@US1547238
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationFuture
Feature: US1547238 - Routing-NPPP Approves Retro

  @TC709184
  @Manual
  @Functional
  Scenario: TC709184 - [RL0]
    Given the task is completed and reviewed by NPPP
    When NPPP selects "Approve" on a retro request
    Then the retro request by passes COO review and is directly in the monitor stage

