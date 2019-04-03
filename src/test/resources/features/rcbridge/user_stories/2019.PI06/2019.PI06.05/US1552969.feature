# Last updated on 
@US1552969
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationFuture
Feature: US1552969 - LOB COO Decision- Approved - move to monitor phase

  @TC721363
  @Manual
  @Functional
  Scenario: TC721363 - [RL0]
    Given a retro request is pending COO decision
    When all necessary LOB COOs have approved
    Then the retro request by passes COO review (Tim)
    And the retro request enters the monitor phase

