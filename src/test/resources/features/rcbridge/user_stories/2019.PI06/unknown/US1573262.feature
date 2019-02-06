# Last updated on 
@US1573262
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1573262 - Join the COO responses - Denied

  @TC720661
  @Manual
  @Functional
  Scenario: TC720661 - [RL0]
    Given a retro request needs to be approved by a LOB COO
    When all necessary LOB COOs have denied
    Then the retro request initiator is informed via a task

