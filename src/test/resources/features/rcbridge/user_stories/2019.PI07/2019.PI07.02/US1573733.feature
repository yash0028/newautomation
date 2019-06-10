# Last updated on 
@US1573733
@2019.PI07
@2019.PI07.02
@releaseUnknown
@iterationUnknown
Feature: US1573733 - Network COO and Operations COO Approves

  @TC743349
  @Manual
  @Functional
  Scenario: TC743349 - [RL0]
    Given a retro request needs to be approved by the Network COO and operations COO
    When the Network COO and operations COO Approves
    Then the retro request enters the monitor phase

