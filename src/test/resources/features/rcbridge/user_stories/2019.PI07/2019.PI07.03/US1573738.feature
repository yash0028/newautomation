# Last updated on 
@US1573738
@2019.PI07
@2019.PI07.03
@releasePresent
@iterationFuture
Feature: US1573738 - Re-present requested more info to Network COO and operations COO

  @TC743413
  @Manual
  @Functional
  Scenario: TC743413 - [RL0]
    Given a network COO or operations COO has requested more information
    When the retro request initiator updates the request with additional details
    Then the network COO and/or operations COO is assigned a task
    And the task contains details provided by Initiator along with comments(optional) provided by the Initiator
    And the task contains the previous comments provided by the network COO and operations COO while Requesting more Info
    And the network COO and operations COO must be able to take another decision (approve/deny/request more info.)
    And task for other LOB COO (who has not yet taken a decision) is updated with the new details provided by the initiator

