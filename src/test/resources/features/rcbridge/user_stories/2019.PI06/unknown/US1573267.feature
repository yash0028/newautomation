# Last updated on 
@US1573267
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1573267 - Join the COO responses - Mixed approved/denied

  @TC721364
  @Manual
  @Functional
  Scenario: TC721364 - [RL0]
    Given a retro request needs to be approved by a LOB COO
    When all necessary LOB COOs have approved or denied
    Then the retro request initiator is assigned a task

