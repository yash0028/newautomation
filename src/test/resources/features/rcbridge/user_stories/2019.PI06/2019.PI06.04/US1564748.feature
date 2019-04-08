# Last updated on 
@Shiva
@US1564748
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPast
Feature: US1564748 - Re-present denial to NPPP

  @TC743386
  @Manual
  @Functional
  @Shiva
  Scenario: TC743386 - [RL0]
    Given a retro approval request exists in the NPPP queue
    When the NPPP user opens the task
    Then all of the data in fields from the "Initiate Retro" is displayed and can be modified

