# Last updated on 
@CLM_UAT
@US1144455
@2018.PI02
@2018.PI02.02
@MVP
@PI02_Top3
@NDB
@Parity
@releasePast
@iterationPast
Feature: US1144455 - [Unfinished] NDB_Send Updates for Update Roster business event

  @TC605358
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC605358 - [RL0]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are successful
    Then the NDB microservices are ready to update NDB

  @TC605359
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC605359 - [RL1]
    Given the NDB connector microservice has received a roster update event
    When all of the NDB edits are not successful
    Then the NDB microservices creates an error message

  @TC605360
  @Manual
  @Functional
  @CLM_UAT
  Scenario: TC605360 - [RL2]
    Given The event MS processed NDB edits sucessfully
    When NDB completes the update / action successfully
    Then NDB initiates an event outcome message to the transaction state service
    And a transaction state service call indicating successful processing was made

