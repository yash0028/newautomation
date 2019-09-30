# Last updated on 
@US1194521
@2018.PI02
@2018.PI02.04
@releasePast
@iterationPast
Feature: US1194521 - [Unfinished] [Continued] [Continued] NDB_Send Updates for Update Roster business event

  @TC605401
  @Manual
  @Functional
  Scenario: TC605401 - [RL0]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @TC605402
  @Manual
  @Functional
  Scenario: TC605402 - [RL1]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @TC605403
  @Manual
  @Functional
  Scenario: TC605403 - [RL2]
    Given The event MS processed NDB edits successfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

