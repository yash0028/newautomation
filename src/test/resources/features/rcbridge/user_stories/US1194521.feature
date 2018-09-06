# Last updated on 
@US1194521
@2018.PI02
Feature: US1194521 - [Unfinished] [Continued] [Continued] NDB_Send Updates for Update Roster business event

  @TC564473
  @Automated
  @Functional
  Scenario: TC564473 - [RL2]
    Given The event MS processed NDB edits successfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @TC564471
  @Automated
  @Functional
  Scenario: TC564471 - [RL0]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @TC564472
  @Automated
  @Functional
  Scenario: TC564472 - [RL1]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

