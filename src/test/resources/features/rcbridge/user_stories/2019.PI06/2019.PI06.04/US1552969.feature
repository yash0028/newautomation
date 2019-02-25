# Last updated on 
@US1552969
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationFuture
Feature: US1552969 - Email: LOB COO Decision- Approved

  @TC721363
  @Manual
  @Functional
  Scenario: TC721363 - [RL0]
    Given a retro request is pending COO decision
    When all necessary LOB COOs have approved
    Then the retro request by passes COO review (Tim)
    And the retro request enters the monitor phase

