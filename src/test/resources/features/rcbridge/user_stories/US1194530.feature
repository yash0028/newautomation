# Last updated on 
@US1194530
@2018.PI02
Feature: US1194530 - [Unfinished] Cosmos Integration

  @TC564397
  @Automated
  @Functional
  Scenario: TC564397 - [RL2]
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @TC564396
  @Automated
  @Functional
  Scenario: TC564396 - [RL1]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @TC564395
  @Automated
  @Functional
  Scenario: TC564395 - [RL0]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

