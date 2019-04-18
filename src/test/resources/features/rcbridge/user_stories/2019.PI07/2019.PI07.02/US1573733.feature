# Last updated on 
@US1573733
@2019.PI07
@2019.PI07.02
@releasePresent
@iterationFuture
Feature: US1573733 - Network COO Approves

  @TC743349
  @Manual
  @Functional
  Scenario: TC743349 - [RL0]
    Given a retro request needs to be approved by the Network COO
    When the Network COO Approves,
    Then the retro request enters the monitor phase

