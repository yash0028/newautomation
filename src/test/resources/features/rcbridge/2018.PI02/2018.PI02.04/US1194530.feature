# Last updated on
@US1194530
@2018.PI02
@2018.PI02.04
@MVP
@PI02_Top3
@NDB
@Parity
@F185083
@releasePast
@iterationPast
Feature: US1194530 - [Unfinished] Cosmos Integration

  @TC605397
  @Manual
  @Functional
  @US1194530
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605397 - [RL2]
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

  @TC605396
  @Manual
  @Functional
  @US1194530
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605396 - [RL1]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @TC605395
  @Manual
  @Functional
  @US1194530
  @2018.PI02
  @2018.PI02.04
  Scenario: TC605395 - [RL0]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

