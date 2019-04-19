# Last updated on 
@US1573730
@2019.PI07
@2019.PI07.02
@releasePresent
@iterationFuture
Feature: US1573730 - Network COO and operations COO Deny or Request More info on  Retro Request

  @TC730582
  @Manual
  @Functional
  Scenario: TC730582 - [RL0]
    Given a task is assigned to the network COO and operations COO by the initiator
    When network COO and operations COO selects 'Deny' or Request More Info'
    And a mandatory reason is provided for the denial or the more info needed
    Then a retro task is created for the Initiator

