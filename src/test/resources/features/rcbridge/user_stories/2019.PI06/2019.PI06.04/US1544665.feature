# Last updated on 
@Arvind
@Shiva
@US1544665
@2019.PI06
@2019.PI06.04
@releaseUnknown
@iterationUnknown
Feature: US1544665 - Routing- NPPP Denies or Requests More Info Retro

  @TC709187
  @Manual
  @Functional
  @Arvind
  @Shiva
  Scenario: TC709187 - [RL0]
    Given the task is completed and reviewed by NPPP
    When NPPP selects "Deny" or "request more info" on the retro request
    Then the retro request is routed to the retro request initiator's task list

