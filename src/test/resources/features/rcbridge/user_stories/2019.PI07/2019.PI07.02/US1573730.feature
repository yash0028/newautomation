# Last updated on 
@US1573730
@2019.PI07
@2019.PI07.02
@releaseUnknown
@iterationUnknown
Feature: US1573730 - Network COO and operations Request More info on  Retro Request

  @TC730582
  @Manual
  @Functional
  Scenario: TC730582 - [RL0]
    Given a task is assigned to each the network COO and operations COO by the initiator
    When they selects "Request More Info' on their task
    And a mandatory reason is provided for the denial or the more info needed
    Then a retro task is created for the Initiator

