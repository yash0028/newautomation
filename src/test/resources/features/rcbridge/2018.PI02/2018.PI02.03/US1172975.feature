# Last updated on 
@CLM_UAT
@US1172975
@2018.PI02
@2018.PI02.03
@MVP
@PI02_Top3
@NDB
@Parity
@releasePast
@iterationPast
Feature: US1172975 - [Unfinished] [Continued] NDB_Send Updates for Update Roster business event

  @TC605398
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC605398 - [RL0]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @TC605399
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC605399 - [RL1]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @TC605400
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC605400 - [RL2]
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

