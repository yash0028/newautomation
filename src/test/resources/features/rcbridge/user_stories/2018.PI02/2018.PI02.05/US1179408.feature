# Last updated on 
@US1179408
@2018.PI02
@2018.PI02.05
Feature: US1179408 - [Continued] Cosmos Integration

  @TC565591
  @Automated
  @Functional
  Scenario: TC565591 - [RL0]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @TC565593
  @Automated
  @Functional
  Scenario: TC565593 - [RL2]
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @TC565592
  @Automated
  @Functional
  Scenario: TC565592 - [RL1]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

