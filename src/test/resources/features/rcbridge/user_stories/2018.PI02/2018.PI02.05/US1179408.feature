# Last updated on 
@US1179408
@2018.PI02
@2018.PI02.05
@releaseUnknown
@iterationUnknown
Feature: US1179408 - [Continued] Cosmos Integration

  @TC494260
  @Manual
  @Functional
  Scenario: TC494260 - [RL0] TC01 : When NDB edits are successful
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @TC494269
  @Manual
  @Functional
  Scenario: TC494269 - [RL1] TC02: When NDB edits are not successful
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @TC498727
  @Manual
  @Functional
  Scenario: TC498727 - [RL2] TC03: When NDB initiates an event outcome message to the transaction state service
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

